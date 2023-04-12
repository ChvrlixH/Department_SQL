CREATE DATABASE Department

Use Department

CREATE TABLE Employees(
	Id int primary key identity,
	Fullname nvarchar(255) not null,
	Age int check(Age > 0) not null,
	Email nvarchar(255)  not null,
	Salary decimal(18,2)  check(Salary between 300 and 2000) 
)


INSERT INTO Employees
VALUES ('Huseyn Ahadzada',21,'huseynshsa@code.edu.az',2000),
	   ('Ayxan Mustafayev',21,'ayxanmus@code.edu.az',1000),
	   ('Fikret Huseynov',16,'fikrathus@code.edu.az',1500),
	   ('Shahin Sharifzade',18,'shahinshar@code.edu.az',1300),
	   ('Asiman Qasimzade',18,'asimanqas@code.edu.az',400)

SELECT * FROM Employees

UPDATE Employees
SET Salary=1600
WHERE Id=2;

SELECT * FROM Employees
WHERE (Employees.Salary >= 500 AND Employees.Salary <=1500)

SELECT Employees.Fullname, Employees.Email, Employees.Salary FROM Employees
ORDER BY Salary DESC