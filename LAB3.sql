Activity 1:
 SELECT Last_Name, Hire_Date
 FROM emps
 WHERE Hire_Date Like ‘%1994%’;

Activity 2: 
 SELECT Last_Name, Salary, Commission_pct
 FROM emps 
 WHERE Commission_pct IS NOT NULL 
 ORDER BY Salary DESC, Commission_pct DESC;

Activity 3: 
SELECT Last_name 
FROM emps 
WHERE Last_name LIKE '%a%' AND Last_name LIKE '%e%';

Activity 4:
 SELECT e.last_name, e.Department_id, d.Department_name
 FROM emps e, depts d 
 WHERE e.Department_Id = d.Department_id;

Activity 5:
 SELECT e.last_name, d.Department_name, d.Location_id, l.City 
 FROM emps e, depts d, locs l 
 WHERE e.Department_Id = d.Department_id AND d.Location_id = l.location_id AND e.commission_pct IS NOT NULL;

Activity 6:
 SELECT e.last_name, e.job_id, e.Department_id, d.Department_name 
 FROM emps e JOIN depts d ON (e.Department_Id = d.Department_id) JOIN locs l ON (d.Location_id = l.location_id) 
 WHERE LOWER(l.City) = 'toronto';

Activity 7:
 SELECT last_name, salary, Commission_pct 
 FROM emps 
 WHERE Commission_pct IS NOT NULL 
 ORDER BY salary DESC, Commission_pct DESC;

Activity 8:
 SELECT w.Last_Name "Employee", w.Employee_Id "EMP#", m.Last_Name "Manager", m.Employee_Id "Mgr#" 
 FROM emps w join emps m ON (w.Manager_id = m.Employee_Id);

Activity 9:
 SELECT ROUND(MAX(salary),0) "Maximum", ROUND(MIN(salary),0) "Minimum", ROUND(SUM(salary),0) "Sum", ROUND(AVG(salary),0) "Average" 
 FROM emps

Activity 10:
 SELECT job_id, ROUND(MAX(salary),0) "Maximum", ROUND(MIN(salary),0) "Minimum", ROUND(SUM(salary),0) "Sum", ROUND(AVG(salary),0) "Average" 
 FROM emps GROUP BY job_id

Activity 11:
 SELECT Job_Id, COUNT(*) 
 FROM emps GROUP BY Job_Id;

Activity 12: 
 SELECT Manager_id, MIN(Salary) 
 FROM emps WHERE Manager_id IS NOT NULL GROUP BY Manager_id HAVING MIN(Salary) > 6000 ORDER BY MIN(Salary) DESC;

HOMETASK:
 select d.department_name"NAME",d.location_id "LOCATIONS", count(*)"NUMBER OF 
 PEOPLE" ,round(avg(e.salary),2) "SAL" 
 from depts d, emps e 
 where e.department_id=d.department_id group by d.department_name,d.location_id