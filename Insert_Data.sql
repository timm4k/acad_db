USE Academy;
GO

DELETE FROM Teachers;
DELETE FROM Groups;
DELETE FROM Departments;
DELETE FROM Faculties;
GO

INSERT INTO Faculties (Dean, Name) VALUES
(N'Dio Brando', N'Stand faculty'),
(N'Jotaro Kujo', N'Star platinum academy'),
(N'Joseph Joestar', N'Hermit purple college'),
(N'Johnny Joestar', N'Steel ball run institute'),
(N'Rohan Kishibe', N'Heavens door art school'),
(N'Weather Report', N'Heavy weather meteorology'),
(N'Narciso Anasui', N'Diver down engineering');
GO

INSERT INTO Departments (Financing, Name) VALUES
(15000, N'The world studies'),
(8000, N'Crazy diamond lab'),
(30000, N'Gold experience'),
(12000, N'Monsters paleontology'),
(9000, N'Heavens door literature'),
(18000, N'Heavy weather eteorology'),
(22000, N'Diver down mechanics');
GO

INSERT INTO Groups (Name, Rating, Year) VALUES
(N'SP-01', 5, 1),
(N'CD-02', 3, 2),
(N'GE-03', 4, 3),
(N'SM-04', 2, 4),
(N'HP-05', 4, 5),
(N'HW-06', 1, 1),
(N'DD-07', 5, 2);
GO

INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, Name, Position, Premium, Salary, Surname) VALUES
('1995-03-12', 1, 0, N'Koichi', N'Stand assistant', 200.00, 500.00, N'Hirose'),
('1998-07-20', 0, 1, N'Kakyoin', N'Emerald professor', 800.00, 1500.00, N'Noriaki'),
('2001-11-05', 1, 0, N'Okuyasu', N'Hand assistant', 300.00, 520.00, N'Nijimura'),
('1999-02-28', 0, 1, N'Polnareff', N'Silver chariot prof', 900.00, 1800.00, N'Jean'),
('1990-09-15', 0, 1, N'Gyro', N'Spin master', 1200.00, 2000.00, N'Zeppeli'),
('1995-06-15', 0, 1, N'Diego', N'Dinosaur jockey', 1500.00, 2500.00, N'Brando'),
('2011-06-20', 1, 0, N'Anasui', N'Diver assistant', 400.00, 600.00, N'Narciso');
GO
