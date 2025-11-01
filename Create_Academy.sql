USE master;
GO

IF DB_ID('Academy') IS NOT NULL
    DROP DATABASE Academy;
GO

CREATE DATABASE Academy;
GO

USE Academy;
GO

CREATE TABLE Faculties (
    Id   INT IDENTITY(1,1) PRIMARY KEY,
    Dean NVARCHAR(MAX) NOT NULL CHECK(Dean <> ''),
    Name NVARCHAR(100) NOT NULL UNIQUE CHECK(Name <> '')
);

CREATE TABLE Departments (
    Id        INT IDENTITY(1,1) PRIMARY KEY,
    Financing MONEY NOT NULL CHECK(Financing >= 0) DEFAULT 0,
    Name      NVARCHAR(100) NOT NULL UNIQUE CHECK(Name <> '')
);

CREATE TABLE Groups (
    Id     INT IDENTITY(1,1) PRIMARY KEY,
    Name   NVARCHAR(10) NOT NULL UNIQUE CHECK(Name <> ''),
    Rating INT NOT NULL CHECK(Rating BETWEEN 0 AND 5),
    Year   INT NOT NULL CHECK(Year BETWEEN 1 AND 5)
);

CREATE TABLE Teachers (
    Id             INT IDENTITY(1,1) PRIMARY KEY,
    EmploymentDate DATE NOT NULL CHECK(EmploymentDate >= '1990-01-01'),
    IsAssistant    BIT NOT NULL DEFAULT 0,
    IsProfessor    BIT NOT NULL DEFAULT 0,
    Name           NVARCHAR(MAX) NOT NULL CHECK(Name <> ''),
    Position       NVARCHAR(MAX) NOT NULL CHECK(Position <> ''),
    Premium        MONEY NOT NULL CHECK(Premium >= 0) DEFAULT 0,
    Salary         MONEY NOT NULL CHECK(Salary > 0),
    Surname        NVARCHAR(MAX) NOT NULL CHECK(Surname <> '')
);
GO