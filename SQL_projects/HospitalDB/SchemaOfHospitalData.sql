--Dtabase structure and Schema

CREATE DATABASE HealthcareAnalysis;

USE HealthcareAnalysis;
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FName VARCHAR(50),
    LName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ZipCode VARCHAR(10)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FName VARCHAR(50),
    LName VARCHAR(50),
    Specialization VARCHAR(50)
);

CREATE TABLE Visits (
    VisitID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    VisitDate DATE,
    Diagnosis VARCHAR(255),
    Treatment VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Diagnoses (
    DiagnosisID INT PRIMARY KEY,
    DiagnosisCode VARCHAR(10),
    Description VARCHAR(255)
);

CREATE TABLE Treatments (
    TreatmentID INT PRIMARY KEY,
    TreatmentName VARCHAR(100),
    SuccessRate DECIMAL(5,2)
);

CREATE TABLE HospitalStays (
    StayID INT PRIMARY KEY,
    PatientID INT,
    AdmissionDate DATE,
    DischargeDate DATE,
    DiagnosisID INT,
    Outcome VARCHAR(50),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnoses(DiagnosisID)
);
