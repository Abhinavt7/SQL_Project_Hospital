
--Number of patients
SELECT Gender, COUNT(*) AS NumberOfPatients
FROM Patients
GROUP BY Gender;

--For most common diagnosis
SELECT Diagnosis, COUNT(*) AS Occurrences
FROM Visits
GROUP BY Diagnosis
ORDER BY Occurrences DESC
LIMIT 1;

--Average length of Hospital stay
SELECT AVG(DATEDIFF(DischargeDate, AdmissionDate)) AS AvgLengthOfStay
FROM HospitalStays;

--Treatment success Rate
SELECT TreatmentName, SuccessRate
FROM Treatments
ORDER BY SuccessRate DESC;

--ReAdmission Rate
SELECT PatientID, COUNT(*) AS NumberOfStays
FROM HospitalStays
GROUP BY PatientID
HAVING NumberOfStays > 1;
