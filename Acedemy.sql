

USE Academy

CREATE TABLE Departments(
Id INT NOT NULL IDENTITY(1,1) Primary Key ,
Financing MONEY NOT NULL CHECK(Financing>=0) DEFAULT 0 ,
[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK(LEN(Name)>0) 
);

CREATE TABLE Faculties(
Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Dean NVARCHAR(MAX) NOT NULL CHECK(LEN(Dean)>0),
[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK(Len(Name)>0)
);

CREATE TABLE GROUPS(
[Name] NVARCHAR(10) NOT NULL CHECK(LEN(Name)>0) UNIQUE,
Rating INT NOT NULL CHECK(Rating>0 AND Rating<5),
[Year] INT NOT NULL CHECK([Year]>1 AND [Year]<5)

);

CREATE TABLE Teachers(
Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
EmploymentDate DATE NOT NULL CHECK(EmploymentDate>'1990-01-01'),
IsAssistant BIT NOT NULL DEFAULT 0,
IsProfessor BIT NOT NULL DEFAULT 0,
[Name] NVARCHAR(MAX) NOT NULL CHECK(LEN([Name])>0),
Position MONEY NOT NULL CHECK(Position>=0) DEFAULT 0,
Salary Money NOT NULL CHECK(Salary>=0),
Surname NVARCHAR(MAX) NOT NULL CHECK(LEN(Surname)>0),
);

AlTER TABLE Teachers
ADD Premium MONEY NOT NULL CHECK(Premium>0) DEFAULT 0