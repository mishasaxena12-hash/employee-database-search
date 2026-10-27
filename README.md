# Employee Database Search System

## Overview
The Employee Database Search System is a menu-driven Java application that uses Oracle SQL and JDBC to search, filter, and sort employee records stored in a database.

## Features
- **Search by Name:** Find employees using their full or partial names.
- **Filter by Department:** Retrieve employees belonging to a specific department.
- **Salary Range Search:** Display employees whose salaries fall within a specified range.
- **Sort by Salary:** Arrange employees in ascending or descending order of salary.
- **Interactive Menu:** Perform different database operations through a simple command-line interface.

## Technologies Used
- Java
- Oracle Database
- SQL
- JDBC (Java Database Connectivity)

## Database Schema
The application uses an `Employee` table with the following attributes:

| Column | Data Type | Description |
|---|---|---|
| emp_id | NUMBER | Unique employee ID |
| emp_name | VARCHAR2(50) | Employee name |
| department | VARCHAR2(30) | Employee department |
| salary | NUMBER(10,2) | Employee salary |

## SQL Operations
- `LIKE` – Searches employees by name.
- `WHERE` – Filters employees by department.
- `BETWEEN` – Retrieves employees within a salary range.
- `ORDER BY` – Sorts employees by salary.

## Prerequisites
- Java Development Kit (JDK)
- Oracle Database
- Oracle JDBC Driver (`ojdbc`)
- An IDE such as Visual Studio Code or IntelliJ IDEA

## Setup and Execution
1. Create the `Employee` table in Oracle Database.
2. Insert employee records into the table.
3. Configure the database URL, username, and password in the Java source code.
4. Add the Oracle JDBC driver to the project's classpath.
5. Compile and run `EmployeeSearch.java`.
6. Select an operation from the menu and enter the required search criteria.

## Sample Database Records

| Employee ID | Name | Department | Salary |
|---:|---|---|---:|
| 101 | Aarav | IT | 60000 |
| 102 | Priya | HR | 45000 |
| 103 | Rahul | IT | 75000 |
| 104 | Sneha | Finance | 55000 |
| 105 | Rohan | HR | 40000 |

## Learning Outcomes
This project demonstrates Java database connectivity, SQL query execution, parameterized queries using `PreparedStatement`, result processing with `ResultSet`, and database filtering and sorting.

## Author
Developed as a Java and Oracle JDBC database programming project.
