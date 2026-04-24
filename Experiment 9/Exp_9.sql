CREATE TABLE employee (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    gender VARCHAR2(10),
    salary NUMBER
);

INSERT INTO employee VALUES (1, 'Amit', 'Male', 50000);
INSERT INTO employee VALUES (2, 'Neha', 'Female', 60000);
INSERT INTO employee VALUES (3, 'Raj', 'Male', 55000);
INSERT INTO employee VALUES (4, 'Priya', 'Female', 65000);

COMMIT;

CREATE OR REPLACE PACKAGE emp_package AS
    PROCEDURE display_employees;
END emp_package;
/

CREATE OR REPLACE PACKAGE BODY emp_package AS

CURSOR emp_cursor IS
SELECT id, name, gender, salary FROM employee;

PROCEDURE display_employees IS

v_id employee.id%TYPE;
v_name employee.name%TYPE;
v_gender employee.gender%TYPE;
v_salary employee.salary%TYPE;

BEGIN

OPEN emp_cursor;

LOOP

FETCH emp_cursor INTO v_id, v_name, v_gender, v_salary;

EXIT WHEN emp_cursor%NOTFOUND;

DBMS_OUTPUT.PUT_LINE(
'ID: ' || v_id ||
' Name: ' || v_name ||
' Gender: ' || v_gender ||
' Salary: ' || v_salary
);

END LOOP;

CLOSE emp_cursor;

END display_employees;

END emp_package;
/

SET SERVEROUTPUT ON;

BEGIN
emp_package.display_employees;
END;
/
