--To display all records from the table
SELECT * FROM Employee;
SELECT * FROM Branch;
SELECT * FROM Client;
SELECT * FROM Manager;


--To display all records from the view
SELECT * FROM Employee_View;
SELECT * FROM Branch_View;
SELECT * FROM Client_View;
SELECT * FROM Manager_View;


--To get all employees
EXEC GetAllEmployees;


--To add a manager
EXEC AddManager
@ManagerName = "Jide Kosoko";


--To add an employee
Exec AddEmployee  
@FirstName = 'Gbolahan', 
@LastName = 'Dada', 
@BirthDate = '1986-11-30', 
@Sex = 'M', 
@Salary = 1000000, 
@BranchID = 10;

/*or 

Exec AddEmployee  
"David", 
"Abiodun", 
"1999-10-12", 
"M", 
120000, 
4;*/
 

--To add a branch
EXEC AddBranch 
@BranchName = 'Ekiti Branch',
@ManagerID = 16;


--To add a client
Exec AddClient
@ClientName = 'Daniel Bolade',
@BranchID = 10;


--To get an employee by branch ID
EXEC GetEmployeeByBranchID @BranchID = 1;
--OR
EXEC GetEmployeeByBranchID 4;


/*--To drop a constraint
ALTER TABLE Employee
DROP CONSTRAINT FK_EmployeeID_BranchID;
ALTER TABLE Branch
DROP CONSTRAINT FK_BranchID_ManagerID;
ALTER TABLE Client
DROP CONSTRAINT FK_ClientID_BranchID;

--To disable Foreign Key Constraint
ALTER TABLE Employee NOCHECK CONSTRAINT FK_Employee_BranchID;
ALTER TABLE Branch NOCHECK CONSTRAINT FK_BranchToManagerID;

--Re-enable Foreign Key Checks
ALTER TABLE Employee CHECK CONSTRAINT FK_Employee_BranchID;
ALTER TABLE Branch CHECK CONSTRAINT FK_BranchToManagerID;

--To find the name of the foreign key constraint
EXEC sp_help 'Employee';
EXEC sp_help 'Branch';

--Removes all rows and resets the identity column to its starting value.
TRUNCATE TABLE Branch;*/
