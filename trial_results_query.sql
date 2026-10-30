-- Trial results table (mirrors ClinicalTrials.gov layout: arms, baseline, outcomes, adverse events)
-- Castor coding used: study_arm 0=Sucralfate 1=Placebo | sex 0=Male 1=Female | 0=Yes 1=No for
-- iv_fluids_needed, any_adverse_event, repeat_ed_visit_within_72_h | disposition 0=Admitted 1=Home
WITH d AS (
  SELECT *, CASE study_arm WHEN 0 THEN 'Sucralfate' ELSE 'Placebo' END AS arm
  FROM study_results
),
ranked AS (
  SELECT arm, oral_intake_ml_kg AS v,
         ROW_NUMBER() OVER (PARTITION BY arm ORDER BY oral_intake_ml_kg) AS rn,
         COUNT(*)     OVER (PARTITION BY arm) AS cnt
  FROM d
),
q AS (   -- quartiles by linear interpolation (same as Excel QUARTILE.INC)
  SELECT lo.arm, p.p,
         ROUND(lo.v + (1 + p.p*(lo.cnt-1) - lo.rn) * (COALESCE(hi.v, lo.v) - lo.v), 2) AS val
  FROM (SELECT 0.25 AS p UNION ALL SELECT 0.5 UNION ALL SELECT 0.75) p
  JOIN ranked lo ON lo.rn = CAST(1 + p.p*(lo.cnt-1) AS INTEGER)
  LEFT JOIN ranked hi ON hi.arm = lo.arm AND hi.rn = lo.rn + 1
)
SELECT section, measure, category, arm, value, percent FROM (

  SELECT 1 AS o, 'Participant flow' AS section, 'Started' AS measure, 'All' AS category,
         arm, COUNT(*) AS value, NULL AS percent
  FROM d GROUP BY arm

  UNION ALL
  SELECT 2, 'Baseline', 'Age', '<=18 years', arm, SUM(age_months < 216),
         ROUND(100.0*SUM(age_months < 216)/COUNT(*), 1)
  FROM d GROUP BY arm

  UNION ALL
  SELECT 3, 'Baseline', 'Sex', CASE sex WHEN 0 THEN 'Male' ELSE 'Female' END, arm, COUNT(*),
         ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM d d2 WHERE d2.arm = d.arm), 1)
  FROM d GROUP BY arm, sex

  UNION ALL
  SELECT 4, 'Baseline', 'Race/Ethnicity',
         CASE race_ethnicity WHEN 0 THEN 'Hispanic or Latino' WHEN 1 THEN 'White'
              WHEN 2 THEN 'Black or African American' WHEN 3 THEN 'Asian'
              WHEN 4 THEN 'American Indian or Alaska Native' WHEN 5 THEN 'Other'
              ELSE 'Unknown/Not reported' END,
         arm, COUNT(*),
         ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM d d2 WHERE d2.arm = d.arm), 1)
  FROM d GROUP BY arm, race_ethnicity

  UNION ALL
  SELECT 5, 'Primary outcome', 'Oral intake (mL/kg)', 'Participants analyzed', arm,
         COUNT(oral_intake_ml_kg), NULL
  FROM d GROUP BY arm

  UNION ALL
  SELECT 6, 'Primary outcome', 'Oral intake (mL/kg)',
         CASE p WHEN 0.25 THEN 'Q1' WHEN 0.5 THEN 'Median' ELSE 'Q3' END, arm, val, NULL
  FROM q

  UNION ALL
  SELECT 7, 'Secondary outcome', 'IV fluids needed', 'Yes', arm, SUM(iv_fluids_needed = 0),
         ROUND(100.0*SUM(iv_fluids_needed = 0)/COUNT(*), 1)
  FROM d GROUP BY arm

  UNION ALL
  SELECT 8, 'Secondary outcome', 'Admitted from ED', 'Yes', arm, SUM(disposition = 0),
         ROUND(100.0*SUM(disposition = 0)/COUNT(*), 1)
  FROM d GROUP BY arm

  UNION ALL
  SELECT 9, 'Secondary outcome', 'Repeat ED visit within 72 h', 'Yes', arm,
         SUM(repeat_ed_visit_within_72_h = 0),
         ROUND(100.0*SUM(repeat_ed_visit_within_72_h = 0)/COUNT(*), 1)
  FROM d GROUP BY arm

  UNION ALL
  SELECT 10, 'Adverse events', 'Participants with any adverse event', 'Yes', arm,
         SUM(any_adverse_event = 0),
         ROUND(100.0*SUM(any_adverse_event = 0)/COUNT(*), 1)
  FROM d GROUP BY arm
)
ORDER BY o, measure, category, arm;
