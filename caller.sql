ALTER SESSION SET current_schema=${{SQLPLUSTG:MYSCHEMA}};
  
CREATE OR REPLACE PACKAGE emp_mgmt AS
   FUNCTION hire (last_name VARCHAR2, job_id VARCHAR2, 
      manager_id NUMBER, salary NUMBER, 
      commission_pct NUMBER, department_id NUMBER) 
      RETURN NUMBER; 
   FUNCTION create_dept(department_id NUMBER, location_id NUMBER) 
      RETURN NUMBER; 
   PROCEDURE remove_emp(employee_id NUMBER); 
   PROCEDURE remove_dept(department_id NUMBER); 
   PROCEDURE increase_sal(employee_id NUMBER, salary_incr NUMBER); 
   PROCEDURE increase_comm(employee_id NUMBER, comm_incr NUMBER); 
   no_comm EXCEPTION; 
   no_sal EXCEPTION; 
END emp_mgmt;
/
grant execute on emp_mgmt to HR;

grant execute on dept_mgmt to HR;
