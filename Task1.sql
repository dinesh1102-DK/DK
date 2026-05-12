use dineshdb;

CREATE DATABASE CollegeDB;


USE CollegeDB;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    Department VARCHAR(30)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration VARCHAR(20)
);

CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Score INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);



ALTER TABLE Students
ADD Email VARCHAR(50);


ALTER TABLE Courses
MODIFY Duration VARCHAR(30);

ALTER TABLE Students
RENAME COLUMN Department TO DeptName;

ALTER TABLE Students
DROP COLUMN Age;

RENAME TABLE Marks TO StudentMarks;

SHOW TABLES;

DESC Students;
DESC Courses;
DESC StudentMarks;