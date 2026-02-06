DECLARE
    emp_id        NUMBER := 121;
    emp_name      VARCHAR2(50) := 'Tejas';
    emp_salary    NUMBER := 50000;
    bonus_amount  NUMBER;
    new_salary    NUMBER;
BEGIN
    
    bonus_amount := emp_salary * 0.10;

    
    new_salary := emp_salary + bonus_amount;

    DBMS_OUTPUT.PUT_LINE('Employee Details');
    DBMS_OUTPUT.PUT_LINE('----------------');
    DBMS_OUTPUT.PUT_LINE('Employee ID   : ' || emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || emp_name);

    DBMS_OUTPUT.PUT_LINE(CHR(10) || 'Salary Details');
    DBMS_OUTPUT.PUT_LINE('----------------');
    DBMS_OUTPUT.PUT_LINE('Salary Before Bonus : ' || emp_salary);
    DBMS_OUTPUT.PUT_LINE('10% Bonus Amount    : ' || bonus_amount);
    DBMS_OUTPUT.PUT_LINE('Salary After Bonus  : ' || new_salary);
END;

/
