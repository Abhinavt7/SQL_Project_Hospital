--Synthetic Data is used 

INSERT INTO Patients (PatientID, FirstName, LastName, DateOfBirth, Gender, ZipCode)
VALUES (1, 'John', 'Doe', '1980-05-15', 'Male', '12345'),
       (2, 'Jane', 'Smith', '1992-07-22', 'Female', '54321');

INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialization)
VALUES (1, 'Emily', 'Johnson', 'Cardiology'),
       (2, 'Michael', 'Williams', 'Neurology');

INSERT INTO Visits (VisitID, PatientID, DoctorID, VisitDate, Diagnosis, Treatment)
VALUES (1, 1, 1, '2024-08-01', 'Hypertension', 'Medication'),
       (2, 2, 2, '2024-08-10', 'Migraine', 'Pain Relief');

INSERT INTO Diagnoses (DiagnosisID, DiagnosisCode, Description)
VALUES (1, 'I10', 'Hypertension'),
       (2, 'G43', 'Migraine');

INSERT INTO Treatments (TreatmentID, TreatmentName, SuccessRate)
VALUES (1, 'Medication', 85.00),
       (2, 'Pain Relief', 75.00);

INSERT INTO HospitalStays (StayID, PatientID, AdmissionDate, DischargeDate, DiagnosisID, Outcome)
VALUES (1, 1, '2024-07-28', '2024-08-02', 1, 'Recovered'),
       (2, 2, '2024-08-05', '2024-08-11', 2, 'Recovered');
