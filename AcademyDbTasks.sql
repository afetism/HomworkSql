--1. Print departments table but arrange its fields in the reverse order.
SELECT [Name],Financing,Id
FROM Departments

--2. Print group names and their ratings using “Group Name”
--and “Group Rating”, respectively, AS names of the fields.
SELECT [Name] AS "Group Name",Rating AS "Group Rating" 
FROM GROUPS


--3. Print for the teachers their surname, percentage of wage rate
--to premium ratio and percentage of wage rate to the salary ratio
--(the amount of wage rate and premium).
SELECT Surname ,(Salary/(Salary+Premium))* 100 AS WageToTotalSalaryPercentage,
        (Salary/Premium)* 100 AS WageToPremiumPercentage
FROM Teachers


--4. Print the faculty table AS a single field in the following format:
--"The dean of faculty [faculty] is [dean]".
SELECT 'The dean of faculty ' + [Name] + ' is '+ Dean 
FROM Faculties

--5. Identify names of the teachers who are professors and whose
--wage rate exceeds 1050.
SELECT [Name]
FROM Teachers
WHERE Salary>1050 and IsProfessor=1

--6. Print names of the departments whose funding is less than
--11,000 or more than 25,000.
SELECT [Name]
FROM Departments
WHERE Financing<11000 or Financing>25000

--7. Print names of faculties other than Computer Science.
SELECT [Name]
FROM Faculties
WHERE [Name]<>'Computer Science'

--8. Print names and positions of teachers who are not professors.
SELECT [Name],Position
FROM Teachers
WHERE Position <> 'Professor'


--9. Print surnames, positions, wage rates, and premia of ASsistants
--whose premium is in the range FROM 160 to 550.
SELECT Surname,Position,Salary,Premium
FROM Teachers
WHERE IsASsistant=1 and Premium Between 160 and 550

--10. Print surnames and wage rates of ASsistants.
SELECT Surname,Position
FROM Teachers
WHERE IsASsistant=1

--11. Print surnames and positions of the teachers who were hired
--before 01.01.2000.
SELECT Surname,Position
FROM Teachers
WHERE EmploymentDate <'2000-01-01'

--12. Print names of the departments in alphabetical order up
--to the Software Development Department. The output field
--should be named "Name of Department".
SELECT [Name] AS "Name of Department"
FROM Departments
WHERE [Name]< 'Software Development'
ORDER BY [Name]


--13. Print names of the ASsistants whose salary (amount of wage
--rate and premium) is not more than 1200.
SELECT [Name]
FROM Teachers
WHERE IsASsistant =1 and (Salary+Premium)<=1200

--14. Print names of groups of the 5th year whose rating is in the range
--FROM 2 to 4.
SELECT [Name]
FROM GROUPS
WHERE Rating between 2 and 4 and [Year]=5

--15. Print names of ASsistants whose wage rate is less than 550 or
--premium is less than 200.
SELECT [Name]
FROM Teachers
WHERE IsASsistant=1 and( Salary <550 or Premium <200)