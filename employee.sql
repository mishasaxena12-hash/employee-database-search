CREATE TABLE Employee (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    department VARCHAR2(30),
    salary NUMBER(10,2)
);
INSERT INTO Employee VALUES (101, 'Aarav', 'IT', 60000);
INSERT INTO Employee VALUES (102, 'Priya', 'HR', 45000);
INSERT INTO Employee VALUES (103, 'Rahul', 'IT', 75000);
INSERT INTO Employee VALUES (104, 'Sneha', 'Finance', 55000);
INSERT INTO Employee VALUES (105, 'Rohan', 'HR', 40000);

COMMIT;
