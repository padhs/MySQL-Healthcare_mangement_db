CREATE DATABASE health_care_db_management;

SHOW DATABASES;

USE health_care_db_management;

-- create tables for db
CREATE TABLE patients(
    patient_id int PRIMARY KEY ,
    patient_name varchar(255),
    date_of_birth varchar(255),
    gender varchar(20),
    address varchar(255),
    contact int
);

ALTER TABLE patients
MODIFY contact varchar(255);
/*
I later decided to convert the datatype from int to varchar cause the random generated data had dashes.
It would be easy to clean data if the attribute is in varchar.
*/

CREATE TABLE doctors(
    doctor_id int PRIMARY KEY ,
    doctor_name varchar(255),
    specialization varchar(50),
    department varchar(50)
);

CREATE TABLE medical_records(
    record_id int PRIMARY KEY,
    patient_id int,
    admission_date date,
    discharge_date date,
    diagnosis varchar(255),
    treatment varchar(255),
    doctor_id int,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)

);

-- inserting values into patients table (generating random data and fixing in table)
INSERT INTO patients (patient_id, patient_name, date_of_birth, gender, address, contact) VALUES
        (1, 'John Smith', '1980-05-15', 'Male', '123 Main St, Anytown', '123-456-7890'),
        (2, 'Emily Brown', '1975-09-20', 'Female', '456 Elm St, Anytown', '234-567-8901'),
        (3, 'David Johnson', '1992-02-10', 'Male', '789 Oak St, Anytown', '345-678-9012'),
        (4, 'Sarah Adams', '1988-07-12', 'Female', '567 Maple St, Anytown', '456-789-0123'),
        (5, 'Michael Clark', '1970-03-25', 'Male', '890 Pine St, Anytown', '567-890-1234'),
        (6, 'Jessica White', '1985-11-30', 'Female', '678 Cedar St, Anytown', '678-901-2345'),
        (7, 'Robert Taylor', '1995-01-05', 'Male', '901 Oakwood St, Anytown', '789-012-3456'),
        (8, 'Jennifer Lee', '1982-08-18', 'Female', '234 Cedar Lane, Anytown', '890-123-4567'),
        (9, 'Christopher Brown', '1978-06-23', 'Male', '345 Oak Lane, Anytown', '901-234-5678'),
        (10, 'Amanda Wilson', '1990-04-17', 'Female', '456 Pine Lane, Anytown', '012-345-6789'),
        (11, 'Daniel Martinez', '1983-09-03', 'Male', '567 Maple Lane, Anytown', '123-456-7890'),
        (12, 'Ashley Harris', '1993-12-28', 'Female', '678 Cedar Lane, Anytown', '234-567-8901'),
        (13, 'Matthew Thompson', '1976-02-14', 'Male', '789 Oakwood Lane, Anytown', '345-678-9012'),
        (14, 'Elizabeth Rodriguez', '1987-10-09', 'Female', '890 Elm Lane, Anytown', '456-789-0123'),
        (15, 'Kevin Wright', '1981-05-22', 'Male', '901 Pine Lane, Anytown', '567-890-1234'),
        (16, 'Samantha King', '1974-08-07', 'Female', '123 Cedar Lane, Anytown', '678-901-2345'),
        (17, 'Joshua Scott', '1994-03-12', 'Male', '234 Oakwood Lane, Anytown', '789-012-3456'),
        (18, 'Lauren Turner', '1986-11-19', 'Female', '345 Maple Lane, Anytown', '890-123-4567'),
        (19, 'Justin Hall', '1977-07-02', 'Male', '456 Pine Lane, Anytown', '901-234-5678'),
        (20, 'Megan Baker', '1991-01-15', 'Female', '567 Elm Lane, Anytown', '012-345-6789');

INSERT INTO doctors (doctor_id, doctor_name, specialization, department) VALUES
        (201, 'Dr. Sarah Jones', 'Pulmonology', 'Internal Medicine'),
        (202, 'Dr. Michael Lee', 'Endocrinology', 'Endocrinology'),
        (203, 'Dr. Linda Smith', 'Cardiology', 'Cardiology'),
        (204, 'Dr. Christopher Brown', 'Neurology', 'Neurology'),
        (205, 'Dr. Jennifer Taylor', 'Pediatrics', 'Pediatrics'),
        (206, 'Dr. Robert Johnson', 'Oncology', 'Oncology'),
        (207, 'Dr. Amanda Martinez', 'Dermatology', 'Dermatology'),
        (208, 'Dr. David Wilson', 'Gastroenterology', 'Gastroenterology'),
        (209, 'Dr. Samantha Miller', 'Rheumatology', 'Rheumatology'),
        (210, 'Dr. Daniel Thomas', 'Nephrology', 'Nephrology'),
        (211, 'Dr. Emily Harris', 'Psychiatry', 'Psychiatry'),
        (212, 'Dr. Matthew Adams', 'Urology', 'Urology'),
        (213, 'Dr. Lauren Scott', 'Ophthalmology', 'Ophthalmology'),
        (214, 'Dr. Justin Turner', 'Orthopedics', 'Orthopedics'),
        (215, 'Dr. Ashley King', 'Geriatrics', 'Geriatrics'),
        (216, 'Dr. Megan Clark', 'Pulmonology', 'Internal Medicine'),
        (217, 'Dr. Kevin White', 'Endocrinology', 'Endocrinology'),
        (218, 'Dr. Samantha Garcia', 'Cardiology', 'Cardiology'),
        (219, 'Dr. Joshua Martin', 'Neurosurgery', 'Neurosurgery'),
        (220, 'Dr. Elizabeth Baker', 'Oncology', 'Oncology');

INSERT INTO medical_records (record_id, patient_id, admission_date, discharge_date, diagnosis, treatment, doctor_id) VALUES
        (101, 1, '2023-01-05', '2023-01-10', 'Pneumonia', 'Antibiotics', 201),
        (102, 2, '2023-02-10', '2023-02-15', 'Diabetes', 'Insulin therapy', 202),
        (103, 3, '2023-03-20', '2023-03-25', 'Hypertension', 'ACE inhibitors', 203),
        (104, 4, '2023-04-12', '2023-04-20', 'Influenza', 'Antiviral medication', 201),
        (105, 5, '2023-05-08', '2023-05-15', 'Asthma', 'Bronchodilators', 202),
        (106, 6, '2023-06-18', '2023-06-25', 'Arthritis', 'NSAIDs', 203),
        (107, 7, '2023-07-03', '2023-07-10', 'Migraine', 'Triptans', 201),
        (108, 8, '2023-08-25', '2023-09-02', 'Depression', 'SSRI', 202),
        (109, 9, '2023-09-10', '2023-09-18', 'Anxiety', 'Benzodiazepines', 203),
        (110, 10, '2023-10-22', '2023-10-30', 'Allergies', 'Antihistamines', 201),
        (111, 11, '2023-11-05', '2023-11-12', 'Gastritis', 'Proton pump inhibitors', 202),
        (112, 12, '2023-12-15', '2023-12-22', 'COPD', 'Bronchodilators', 203),
        (113, 13, '2024-01-02', '2024-01-09', 'Insomnia', 'Sedatives', 201),
        (114, 14, '2024-02-08', '2024-02-15', 'Osteoporosis', 'Bisphosphonates', 202),
        (115, 15, '2024-03-17', '2024-03-24', 'Thyroid disorder', 'Thyroid hormone therapy', 203),
        (116, 16, '2024-04-09', '2024-04-16', 'Sinusitis', 'Decongestants', 201),
        (117, 17, '2024-05-23', '2024-05-30', 'Hypothyroidism', 'Levothyroxine', 202),
        (118, 18, '2024-06-30', '2024-07-07', 'Eczema', 'Topical corticosteroids', 203),
        (119, 19, '2024-07-14', '2024-07-21', 'Psoriasis', 'Phototherapy', 201),
        (120, 20, '2024-08-26', '2024-09-02', 'Obesity', 'Diet and exercise', 202);

-- check to see if data successfully entered in table
SELECT *
FROM health_care_db_management.doctors;

-- names, gender of all patients:
SELECT patients.patient_name, patients.gender
FROM patients;

-- unique diagnoses
SELECT DISTINCT medical_records.diagnosis
FROM medical_records;

-- total number of patients
SELECT COUNT(patients.patient_id)
FROM patients;

-- oldest patient
SELECT patients.date_of_birth
FROM patients
ORDER BY patients.date_of_birth
LIMIT 1;

-- find addess & contact of patient_id = 7
SELECT patients.address, patients.contact
FROM patients
WHERE patient_id = 7;

-- about doctors
SELECT doctors.doctor_name, doctors.specialization
FROM doctors;

-- average duration of hospital stay
SELECT AVG(DATEDIFF(medical_records.discharge_date, medical_records.admission_date)) AS avg_duration
FROM medical_records;

-- count males and females (group by)
SELECT patients.gender, COUNT(*) AS gender_count
FROM patients
GROUP BY patients.gender;

-- doc who treated most no. of patients
SELECT medical_records.doctor_id, COUNT(*) AS patients_treated
FROM medical_records
GROUP BY medical_records.doctor_id
ORDER BY patients_treated DESC;

-- all patients who have names in 'J'--> (wildcards)
SELECT patients.patient_name
FROM patients
WHERE patient_name LIKE 'J%';

-- patient name with admission & discharge date
SELECT patients.patient_name, medical_records.admission_date, medical_records.discharge_date
FROM patients
INNER JOIN medical_records ON patients.patient_id = medical_records.patient_id;

-- total no. of medical records
SELECT COUNT(*) AS med_records
FROM medical_records;

-- patients diagnosed with diabetes or hypertension
SELECT patients.patient_id, patients.patient_name, medical_records.diagnosis
FROM patients
INNER JOIN medical_records ON patients.patient_id = medical_records.patient_id
-- another way: WHERE medical_records.diagnosis IN ("Hypertension", "Diabetes");
WHERE medical_records.diagnosis = 'Hypertension' OR 'Diabetes';

-- average age of patients
SELECT AVG(YEAR(CURRENT_DATE) - YEAR(patients.date_of_birth)) AS avg_age, patients.patient_name
FROM patients;

-- docs who treated patients admitted in Jan 2023
SELECT DISTINCT doctors.*
FROM doctors
INNER JOIN medical_records mr ON doctors.doctor_id = mr.doctor_id
WHERE mr.admission_date BETWEEN '2023-01-01' AND '2023-01-31';

-- total no. of patients treated by each doc
SELECT DISTINCT doctors.doctor_name, COUNT(*) AS patient_list
FROM doctors
INNER JOIN medical_records ON doctors.doctor_id = medical_records.doctor_id
GROUP BY doctors.doctor_name;

-- list patients treated by doctor specialized in cardiology
SELECT patients.patient_name, doctors.doctor_name
FROM patients
INNER JOIN medical_records ON patients.patient_id = medical_records.patient_id
INNER JOIN doctors ON medical_records.doctor_id = doctors.doctor_id
WHERE doctors.specialization = 'Cardiology';

-- patient with longest hospital stay duration
SELECT patients.patient_name
FROM patients
INNER JOIN medical_records mr ON patients.patient_id = mr.patient_id
ORDER BY DATEDIFF(mr.discharge_date, mr.admission_date) DESC
LIMIT 1;

-- top 5 most common diagnoses (all records refer to different diagnoses. From analysis POV this step is not required)
SELECT medical_records.diagnosis, COUNT(*) AS diagnosis_count
FROM medical_records
GROUP BY medical_records.diagnosis
ORDER BY diagnosis_count DESC
LIMIT 5;

-- patients treated by doc with names starting with 'Dr. S'
SELECT patients.patient_id, patients.patient_name, doctors.doctor_name, doctors.doctor_id
FROM patients
JOIN medical_records ON patients.patient_id = medical_records.patient_id
RIGHT OUTER JOIN doctors ON medical_records.doctor_id = doctors.doctor_id
-- INNER JOIN doctors ON medical_records.doctor_id = doctors.doctor_id
-- because of right outer join we can see null values for doc_id 209 & 218. they have no data in medical_records.
-- inner joins would only result in Dr. Sarah Jones
WHERE doctors.doctor_name LIKE 'Dr. S%';

-- % male & female patients
SELECT patients.gender, COUNT(*)*100/(
    SELECT COUNT(*) FROM patients)
FROM patients
GROUP BY patients.gender;

-- patient with highest no. of medical entries (all records are distinct)
SELECT patients.patient_name, COUNT(*) as record_count
FROM patients
INNER JOIN medical_records on patients.patient_id = medical_records.patient_id
GROUP BY patients.patient_name
ORDER BY record_count DESC
-- this will return the first patient name as all records are distinct no repeated medical entries of any patients
LIMIT 1;

-- top 3 docs who treated most no. of patients
SELECT doctors.doctor_name, COUNT(*) as patient_count
FROM doctors
INNER JOIN medical_records on doctors.doctor_id = medical_records.doctor_id
ORDER BY patient_count DESC
LIMIT 3;

-- average duration of hospital stay for each diagnosis(distinct)
SELECT medical_records.diagnosis, AVG(DATEDIFF(medical_records.discharge_date, medical_records.admission_date))
FROM medical_records
GROUP BY medical_records.diagnosis;

-- rank patients based on no. of medical records from highest to lowest(no use all patient_id have only 1 record entry)
SELECT patient_id, COUNT(*) med_entries, RANK() OVER (ORDER BY COUNT(*) DESC) as med_entry_rank
FROM medical_records
GROUP BY patient_id;

-- patient who spent most time in hospital
SELECT patients.patient_name, DATEDIFF(medical_records.discharge_date, medical_records.admission_date) as duration
FROM patients
INNER JOIN medical_records ON patients.patient_id = medical_records.patient_id
ORDER BY duration DESC
LIMIT 1;

-- patient list of docs specialized in cardiology or pulmonology
SELECT doctors.doctor_name, doctors.specialization, patients.patient_name
FROM patients
INNER JOIN medical_records on patients.patient_id = medical_records.patient_id
RIGHT JOIN doctors on medical_records.doctor_id = doctors.doctor_id
-- we can see docs who don't have a patient list in the medical record (maybe they're interns ?)
WHERE doctors.specialization IN ('Cardiology', 'Pulmonology');

-- doc who treated the most no. of diabetes patients
SELECT doctors.doctor_name, COUNT(*) AS diabetes_patient
FROM doctors
INNER JOIN medical_records on doctors.doctor_id = medical_records.doctor_id
WHERE medical_records.diagnosis = 'Diabetes'
GROUP BY doctors.doctor_name
ORDER BY diabetes_patient DESC
LIMIT 1;

-- total no. of patients treated by each doc
SELECT doctors.doctor_name, COUNT(medical_records.patient_id) as patient_count
FROM doctors
LEFT OUTER JOIN medical_records on doctors.doctor_id = medical_records.doctor_id
GROUP BY doctors.doctor_name
ORDER BY patient_count DESC;

-- patients who were readmitted within 30 days:
/*
Since there is no repetition in the patient_id in the medical_record table, no patient was readmitted within 30 days or discharge.
So, let's add some new data to the medical_record table
Note: this will affect our initial analysis as the dimension & scope of analysis changes due to addition of new data.
*/

-- new data:
INSERT INTO medical_records (record_id, patient_id, admission_date, discharge_date, diagnosis, treatment, doctor_id) VALUES
    (121, 1, '2024-01-15', '2024-01-20', 'Pneumonia', 'Antibiotics', 201),
    (122, 1, '2024-02-10', '2024-02-15', 'Pneumonia', 'Antibiotics', 201),
    (123, 2, '2024-03-20', '2024-03-25', 'Diabetes', 'Insulin therapy', 202),
    (124, 2, '2024-04-12', '2024-04-15', 'Diabetes', 'Insulin therapy', 202),
    (125, 3, '2024-05-08', '2024-05-15', 'Asthma', 'Bronchodilators', 202),
    (126, 3, '2024-06-18', '2024-06-20', 'Asthma', 'Bronchodilators', 202),
    (127, 4, '2024-07-03', '2024-07-10', 'Migraine', 'Triptans', 203),
    (128, 4, '2024-07-25', '2024-07-30', 'Migraine', 'Triptans', 203);

-- query table to check if data added successfully
SELECT *
FROM medical_records
WHERE record_id = 127;

SELECT m1.patient_id,
       p.patient_name,
       m1.admission_date as readmission_date,
       m1.discharge_date as readmission_discharge_date,
       m2.admission_date as previous_admission_date
FROM medical_records m1
INNER JOIN medical_records m2 on m1.patient_id = m2.patient_id
AND m1.admission_date > m2.discharge_date
AND DATEDIFF(m1.admission_date, m2.discharge_date) <= 30
JOIN patients p on m1.patient_id = p.patient_id
ORDER BY m1.patient_id, m1.admission_date;

-- avg duration of hospital stay by month
SELECT
    YEAR(medical_records.admission_date) as year,
    MONTH(medical_records.admission_date) as month,
    AVG(DATEDIFF(medical_records.discharge_date, medical_records.admission_date)) AS avg_duration_stay
FROM medical_records
WHERE admission_date >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
GROUP BY year, month
ORDER BY year, month;

-- list of patients who have been admitted to hospital for more than once in last year
SELECT p.patient_id,
       p.patient_name,
       COUNT(*) as admisssion
FROM medical_records
INNER JOIN patients p on medical_records.patient_id = p.patient_id
WHERE medical_records.admission_date >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
GROUP BY p.patient_id, p.patient_name
HAVING COUNT(*) > 1;

-- total hospital charges exceed threshold
/*
We don't have the charges attribute to the data. Let's add a new attribute to the medical_records
*/

ALTER TABLE medical_records
ADD charges int;
INSERT INTO medical_records (charges) VALUES(34);

ALTER TABLE medical_records
MODIFY record_id int DEFAULT 0;


SELECT medical_records.charges
FROM medical_records;
-- the first entry has now 34 in it. cool. Now we can enter all the data
-- let's delete the charges column first
ALTER TABLE medical_records
DROP charges;

-- creating a new table and join with medical_records and then update medical_records table
CREATE TABLE medical_charges(
    id int DEFAULT 0,
    charges int PRIMARY KEY);
INSERT INTO medical_charges (id, charges) VALUES
        (101, 78),
        (102, 76),
        (103, 98),
        (104, 109),
        (105, 89),
        (106, 70),
        (107, 71),
        (108, 197),
        (109, 69),
        (110, 62),
        (111, 81),
        (112, 44),
        (113, 132),
        (114, 22),
        (115, 103),
        (116, 161),
        (117, 121),
        (118, 138),
        (119, 191),
        (120, 211),
        (121, 101),
        (122, 34),
        (123, 208),
        (124, 87),
        (125, 65),
        (126, 120),
        (127, 85),
        (128, 45);

-- check data entry (works)
SELECT *
FROM medical_charges
WHERE charges = 87;

-- add charges column to medical_records table
ALTER TABLE medical_records ADD COLUMN charges int DEFAULT 0;

UPDATE medical_records
INNER JOIN medical_charges on medical_records.record_id = medical_charges.id
SET medical_records.charges = medical_charges.charges;

-- query to see if column values were added (works) :) we didn't have to add data manually.
SELECT *
FROM medical_records
WHERE charges = 120;

SELECT patients.patient_name, SUM(medical_records.charges) as med_charges
FROM medical_records
JOIN patients on medical_records.patient_id = patients.patient_id
GROUP BY patients.patient_name
HAVING med_charges >= 100;

-- percentage change in no. of patients admitted each month compared to the previous
SELECT
    YEAR(admission_date) AS year,
    MONTH(admission_date) AS month,
    COUNT(*) AS admissions,
    ((COUNT(*) - LAG(COUNT(*), 1, 0) OVER (ORDER BY YEAR(admission_date), MONTH(admission_date))) * 100.0) / LAG(COUNT(*), 1, 1) OVER (ORDER BY YEAR(admission_date), MONTH(admission_date)) AS percentage_change
FROM
    medical_records
WHERE
    admission_date >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
GROUP BY
    YEAR(admission_date), MONTH(admission_date);