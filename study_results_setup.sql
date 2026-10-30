-- Study results from Castor EDC export (27-Oct-2026). Dates stored as YYYY-MM-DD.
DROP TABLE IF EXISTS study_results;
CREATE TABLE study_results (
  participant_id TEXT PRIMARY KEY,
  participant_status TEXT,
  site_abbreviation TEXT,
  participant_creation_date TEXT,
  consent_signed_by_parent_guardian INTEGER,
  consent_date TEXT,
  icf_version TEXT,
  age_6_59 INTEGER,
  infectious_oral_ulcers_clinical_diagnosis INTEGER,
  poor_oral_intake_per_parent INTEGER,
  any_exclusion_criterion_present INTEGER,
  parent_guardian_speaks_english_or_spanish INTEGER,
  age_months INTEGER,
  sex INTEGER,
  weight_kg REAL,
  race_ethnicity INTEGER,
  other_race_ethnicity TEXT,
  clinical_diagnosis INTEGER,
  other_diagnosis TEXT,
  cds_total INTEGER,
  days_of_decreased_oral_intake INTEGER,
  days_of_decreased_urine_output INTEGER,
  temperature_at_triage_c REAL,
  study_arm INTEGER,
  volume_dose_mg REAL,
  time_drug TEXT,
  re_dosed INTEGER,
  kit_syringe_number TEXT,
  fluid_type INTEGER,
  volume_offered_ml INTEGER,
  volume_remaining_ml INTEGER,
  oral_intake_ml_kg REAL,
  challenge_start_time TEXT,
  physician_oi_adequate INTEGER,
  iv_fluids_needed INTEGER,
  disposition INTEGER,
  any_adverse_event INTEGER,
  ed_length_of_stay_min INTEGER,
  blinding_guess INTEGER,
  parent_guess INTEGER,
  date_of_call TEXT,
  contact_made_with_family INTEGER,
  repeat_ed_visit_within_72_h INTEGER,
  hours_since_ed_visit REAL
);
INSERT INTO study_results (participant_id, participant_status, site_abbreviation, participant_creation_date, consent_signed_by_parent_guardian, consent_date, icf_version, age_6_59, infectious_oral_ulcers_clinical_diagnosis, poor_oral_intake_per_parent, any_exclusion_criterion_present, parent_guardian_speaks_english_or_spanish, age_months, sex, weight_kg, race_ethnicity, other_race_ethnicity, clinical_diagnosis, other_diagnosis, cds_total, days_of_decreased_oral_intake, days_of_decreased_urine_output, temperature_at_triage_c, study_arm, volume_dose_mg, time_drug, re_dosed, kit_syringe_number, fluid_type, volume_offered_ml, volume_remaining_ml, oral_intake_ml_kg, challenge_start_time, physician_oi_adequate, iv_fluids_needed, disposition, any_adverse_event, ed_length_of_stay_min, blinding_guess, parent_guess, date_of_call, contact_made_with_family, repeat_ed_visit_within_72_h, hours_since_ed_visit) VALUES ('110001', 'Not Set', 'STS', '2026-10-26 15:32:04', 0, '2026-10-05', 'v1.0', 0, 0, 0, 1, 0, 11, 1, 9.0, 0, NULL, 1, NULL, 2, 4, 3, 36.0, 0, 180.0, '2026-10-05 11:11:00', 1, '2', 1, 200, 120, 8.89, '11:20', 0, 1, 1, 1, 200, 1, 0, '2026-10-08', 0, 1, 74.0);
INSERT INTO study_results (participant_id, participant_status, site_abbreviation, participant_creation_date, consent_signed_by_parent_guardian, consent_date, icf_version, age_6_59, infectious_oral_ulcers_clinical_diagnosis, poor_oral_intake_per_parent, any_exclusion_criterion_present, parent_guardian_speaks_english_or_spanish, age_months, sex, weight_kg, race_ethnicity, other_race_ethnicity, clinical_diagnosis, other_diagnosis, cds_total, days_of_decreased_oral_intake, days_of_decreased_urine_output, temperature_at_triage_c, study_arm, volume_dose_mg, time_drug, re_dosed, kit_syringe_number, fluid_type, volume_offered_ml, volume_remaining_ml, oral_intake_ml_kg, challenge_start_time, physician_oi_adequate, iv_fluids_needed, disposition, any_adverse_event, ed_length_of_stay_min, blinding_guess, parent_guess, date_of_call, contact_made_with_family, repeat_ed_visit_within_72_h, hours_since_ed_visit) VALUES ('110002', 'Not Set', 'STS', '2026-10-27 05:22:43', 0, '2026-10-06', 'v1.0', 0, 0, 0, 1, 0, 22, 0, 11.0, 0, NULL, 1, NULL, 1, 2, 1, 38.0, 1, 220.0, '2026-10-06 11:10:00', 1, '3', 1, 200, 110, 8.18, '11:20', 0, 1, 1, 1, 200, 1, 1, '2026-10-09', 0, 1, 74.0);
INSERT INTO study_results (participant_id, participant_status, site_abbreviation, participant_creation_date, consent_signed_by_parent_guardian, consent_date, icf_version, age_6_59, infectious_oral_ulcers_clinical_diagnosis, poor_oral_intake_per_parent, any_exclusion_criterion_present, parent_guardian_speaks_english_or_spanish, age_months, sex, weight_kg, race_ethnicity, other_race_ethnicity, clinical_diagnosis, other_diagnosis, cds_total, days_of_decreased_oral_intake, days_of_decreased_urine_output, temperature_at_triage_c, study_arm, volume_dose_mg, time_drug, re_dosed, kit_syringe_number, fluid_type, volume_offered_ml, volume_remaining_ml, oral_intake_ml_kg, challenge_start_time, physician_oi_adequate, iv_fluids_needed, disposition, any_adverse_event, ed_length_of_stay_min, blinding_guess, parent_guess, date_of_call, contact_made_with_family, repeat_ed_visit_within_72_h, hours_since_ed_visit) VALUES ('110003', 'Not Set', 'STS', '2026-10-27 07:52:49', 0, '2026-10-07', 'v1.0', 0, 0, 0, 1, 0, 9, 1, 8.0, 0, NULL, 0, NULL, 1, 2, 1, 38.0, 0, 160.0, '2026-10-07 11:10:00', 1, '4', 1, 200, 150, 6.25, '11:20', 0, 1, 1, 1, 200, 0, 1, '2026-10-10', 0, 1, 74.0);
INSERT INTO study_results (participant_id, participant_status, site_abbreviation, participant_creation_date, consent_signed_by_parent_guardian, consent_date, icf_version, age_6_59, infectious_oral_ulcers_clinical_diagnosis, poor_oral_intake_per_parent, any_exclusion_criterion_present, parent_guardian_speaks_english_or_spanish, age_months, sex, weight_kg, race_ethnicity, other_race_ethnicity, clinical_diagnosis, other_diagnosis, cds_total, days_of_decreased_oral_intake, days_of_decreased_urine_output, temperature_at_triage_c, study_arm, volume_dose_mg, time_drug, re_dosed, kit_syringe_number, fluid_type, volume_offered_ml, volume_remaining_ml, oral_intake_ml_kg, challenge_start_time, physician_oi_adequate, iv_fluids_needed, disposition, any_adverse_event, ed_length_of_stay_min, blinding_guess, parent_guess, date_of_call, contact_made_with_family, repeat_ed_visit_within_72_h, hours_since_ed_visit) VALUES ('110004', 'Not Set', 'STS', '2026-10-27 08:01:39', 0, '2026-10-08', 'v1.0', 0, 0, 0, 1, 0, 36, 0, 14.0, 0, NULL, 2, NULL, 1, 2, 1, 38.0, 1, 280.0, '2026-10-08 11:10:00', 1, '5', 1, 250, 130, 8.57, '11:20', 0, 1, 1, 1, 200, 1, 1, '2026-10-13', 0, 1, 110.0);
INSERT INTO study_results (participant_id, participant_status, site_abbreviation, participant_creation_date, consent_signed_by_parent_guardian, consent_date, icf_version, age_6_59, infectious_oral_ulcers_clinical_diagnosis, poor_oral_intake_per_parent, any_exclusion_criterion_present, parent_guardian_speaks_english_or_spanish, age_months, sex, weight_kg, race_ethnicity, other_race_ethnicity, clinical_diagnosis, other_diagnosis, cds_total, days_of_decreased_oral_intake, days_of_decreased_urine_output, temperature_at_triage_c, study_arm, volume_dose_mg, time_drug, re_dosed, kit_syringe_number, fluid_type, volume_offered_ml, volume_remaining_ml, oral_intake_ml_kg, challenge_start_time, physician_oi_adequate, iv_fluids_needed, disposition, any_adverse_event, ed_length_of_stay_min, blinding_guess, parent_guess, date_of_call, contact_made_with_family, repeat_ed_visit_within_72_h, hours_since_ed_visit) VALUES ('110005', 'Not Set', 'STS', '2026-10-27 08:07:37', 0, '2026-10-09', 'v1.0', 0, 0, 0, 1, 0, 18, 1, 10.0, 0, NULL, 0, NULL, 1, 2, 1, 38.0, 0, 200.0, '2026-10-09 11:10:00', 1, '6', 1, 200, 100, 10.0, '11:20', 0, 1, 1, 1, 200, 0, 0, '2026-10-12', 0, 1, 74.0);
