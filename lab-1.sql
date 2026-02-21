-- ==========================================
-- Part A: DDL (Data Definition Language)
-- ==========================================

-- 1. Create the database
CREATE DATABASE CollegeDB;

-- 2. Select the database to use
USE CollegeDB;

-- 3. Create Student table
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

-- 4. Create Course table
CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);

-- 5. Add City column to Student
ALTER TABLE Student ADD City VARCHAR(30);

-- 6. Add Semester column to Student
ALTER TABLE Student ADD Semester INT;

-- 7. Rename Phone to MobileNo
-- Note: In MySQL 8.0+ use RENAME COLUMN. In older versions, use CHANGE.
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

-- 8. Delete the Course table
DROP TABLE Course;


-- ==========================================
-- Part B: DML (Data Manipulation Language)
-- ==========================================

-- 9. Insert 5 records into Student
INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) 
VALUES (101, 'Rahul', 'CSE', 19, '9876543210', 'Delhi', 2);

INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) 
VALUES (102, 'Anjali', 'ECE', 21, '9876543211', 'Mumbai', 4);

INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) 
VALUES (103, 'Amit', 'CSE', 22, '9876543212', 'Bangalore', 6);

INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) 
VALUES (104, 'Sneha', 'IT', 20, '9876543213', 'Pune', 2);

INSERT INTO Student (RollNo, Name, Dept, Age, MobileNo, City, Semester) 
VALUES (105, 'Vikram', 'ME', 23, '9876543214', 'Chennai', 8);

-- 10. Display all records
SELECT * FROM Student;

-- 11. Display only RollNo and Name
SELECT RollNo, Name FROM Student;

-- 12. Display students from "CSE" department
SELECT * FROM Student WHERE Dept = 'CSE';

-- 13. Display students older than 20
SELECT * FROM Student WHERE Age > 20;

-- 14. Update department of RollNo 101 to ECE
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

-- 15. Update Rahul's city to Patna
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

-- 16. Increase age of everyone by 1
UPDATE Student SET Age = Age + 1;

-- 17. Delete student with RollNo 105
DELETE FROM Student WHERE RollNo = 105;

-- 18. Delete all records (Table stays, data goes)
DELETE FROM Student;
