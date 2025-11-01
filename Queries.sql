USE Academy;
GO

PRINT 'Result 1-2';
SELECT Name AS [Department Name], Financing, Id
FROM dbo.Departments
ORDER BY Id;
GO

PRINT 'Result 1-3';
SELECT Name AS [Group Name], Rating AS [Group Rating]
FROM dbo.Groups;
GO

PRINT 'Result 1-4';
SELECT Surname,
       ROUND((Salary * 100.0) / NULLIF(Premium, 0), 2) AS [Salary % of Premium],
       ROUND((Salary * 100.0) / (Salary + Premium), 2) AS [Salary % of Total]
FROM dbo.Teachers;
GO

PRINT 'Result 1-5';
SELECT CONCAT('Dean of faculty ', Name, ' is ', Dean, '.') AS [Faculty Info]
FROM dbo.Faculties;
GO

PRINT 'Result 1-6';
SELECT Surname
FROM dbo.Teachers
WHERE IsProfessor = 1 AND Salary > 1050;
GO

PRINT 'Result 1-7';
SELECT Name
FROM dbo.Departments
WHERE Financing < 11000 OR Financing > 25000;
GO

PRINT 'Result 1-8';
SELECT Name
FROM dbo.Faculties
WHERE Name <> N'Star platinum academy';
GO

PRINT 'Result 1-9';
SELECT Surname, Position
FROM dbo.Teachers
WHERE IsProfessor = 0;
GO

PRINT 'Result 1-10';
SELECT Surname, Position, Salary, Premium
FROM dbo.Teachers
WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550;
GO

PRINT 'Result 1-11';
SELECT Surname, Salary
FROM dbo.Teachers
WHERE IsAssistant = 1;
GO

PRINT 'Result 1-12';
SELECT Surname, Position
FROM dbo.Teachers
WHERE EmploymentDate < '2000-01-01';
GO

PRINT 'Result 1-13';
SELECT Name AS [Name of Department]
FROM dbo.Departments
WHERE Name < N'The world studies'
ORDER BY Name;
GO

PRINT 'Result 1-14';
SELECT Surname
FROM dbo.Teachers
WHERE IsAssistant = 1 AND (Salary + Premium) <= 1200;
GO

PRINT 'Result 1-15';
SELECT Name
FROM dbo.Groups
WHERE Year = 5 AND Rating BETWEEN 2 AND 4;
GO

PRINT 'Result 1-16';
SELECT Surname
FROM dbo.Teachers
WHERE IsAssistant = 1 AND (Salary < 550 OR Premium < 200);
GO
