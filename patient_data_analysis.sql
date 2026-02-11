-- Total number of patient records
SELECT COUNT(*) AS total_patients
FROM patients;
-- Understand schema and column data types
DESCRIBE patients;
-- Check non-null counts for key columns
SELECT
    COUNT(Name) AS name_count,
    COUNT(Age) AS age_count,
    COUNT(Gender) AS gender_count,
    COUNT(`Blood Type`) AS blood_type_count,
    COUNT(`Medical Condition`) AS medical_condition_count,
    COUNT(`Date of Admission`) AS admission_date_count,
    COUNT(Doctor) AS doctor_count,
    COUNT(Hospital) AS hospital_count,
    COUNT(`Insurance Provider`) AS insurance_count,
    COUNT(`Billing Amount`) AS billing_amount_count,
    COUNT(`Room Number`) AS room_number_count,
    COUNT(`Admission Type`) AS admission_type_count,
    COUNT(`Discharge Date`) AS discharge_date_count,
    COUNT(Medication) AS medication_count,
    COUNT(`Test Results`) AS test_results_count
FROM patients;
-- Basic age distribution statistics
SELECT
    MIN(Age) AS min_age,
    MAX(Age) AS max_age,
    ROUND(AVG(Age), 2) AS avg_age
FROM patients;
-- Patient count by gender
SELECT
    Gender,
    COUNT(*) AS patient_count
FROM patients
GROUP BY Gender;
-- Most common medical conditions
SELECT
    `Medical Condition`,
    COUNT(*) AS patient_count
FROM patients
GROUP BY `Medical Condition`
ORDER BY patient_count DESC;
-- Patient count by admission type
SELECT
    `Admission Type`,
    COUNT(*) AS patient_count
FROM patients
GROUP BY `Admission Type`
ORDER BY patient_count DESC;
-- Cost analysis by medical condition
SELECT
    `Medical Condition`,
    ROUND(AVG(`Billing Amount`), 2) AS avg_billing_amount
FROM patients
GROUP BY `Medical Condition`
ORDER BY avg_billing_amount DESC;
-- Cost comparison across admission types
SELECT
    `Admission Type`,
    ROUND(AVG(`Billing Amount`), 2) AS avg_billing_amount
FROM patients
GROUP BY `Admission Type`
ORDER BY avg_billing_amount DESC;
-- Overall average length of hospital stay (in days)
SELECT
    ROUND(
        AVG(
            DATEDIFF(
                STR_TO_DATE(`Discharge Date`, '%Y-%m-%d'),
                STR_TO_DATE(`Date of Admission`, '%Y-%m-%d')
            )
        ),
    2) AS avg_length_of_stay
FROM patients
WHERE
    STR_TO_DATE(`Discharge Date`, '%Y-%m-%d') >=
    STR_TO_DATE(`Date of Admission`, '%Y-%m-%d');
-- Length of stay analysis by medical condition
SELECT
    `Medical Condition`,
    ROUND(
        AVG(
            DATEDIFF(
                STR_TO_DATE(`Discharge Date`, '%Y-%m-%d'),
                STR_TO_DATE(`Date of Admission`, '%Y-%m-%d')
            )
        ),
    2) AS avg_length_of_stay
FROM patients
WHERE
    STR_TO_DATE(`Discharge Date`, '%Y-%m-%d') >=
    STR_TO_DATE(`Date of Admission`, '%Y-%m-%d')
GROUP BY `Medical Condition`
ORDER BY avg_length_of_stay DESC;
-- Identify records where discharge date is earlier than admission date
SELECT *
FROM patients
WHERE
    STR_TO_DATE(`Discharge Date`, '%Y-%m-%d') <
    STR_TO_DATE(`Date of Admission`, '%Y-%m-%d');


