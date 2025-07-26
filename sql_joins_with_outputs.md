 SQL JOIN Queries and Outputs
🛢️ Sample Tables
employees
emp_id	emp_name	dept_id
1	Alice	10
2	Bob	20
3	Charlie	10
4	David	NULL

departments
dept_id	dept_name
10	HR
20	Engineering
30	Marketing

🔗 INNER JOIN
sql
Copy
Edit
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;
✅ Output:
emp_id	emp_name	dept_name
1	Alice	HR
2	Bob	Engineering
3	Charlie	HR

🔗 LEFT JOIN
sql
Copy
Edit
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;
✅ Output:
emp_id	emp_name	dept_name
1	Alice	HR
2	Bob	Engineering
3	Charlie	HR
4	David	NULL

🔗 RIGHT JOIN
sql
Copy
Edit
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;
✅ Output:
emp_id	emp_name	dept_name
1	Alice	HR
2	Bob	Engineering
3	Charlie	HR
NULL	NULL	Marketing

🔗 FULL OUTER JOIN (Note: Not supported in all SQL dialects)
sql
Copy
Edit
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
FULL OUTER JOIN departments d ON e.dept_id = d.dept_id;
✅ Output:
emp_id	emp_name	dept_name
1	Alice	HR
2	Bob	Engineering
3	Charlie	HR
4	David	NULL
NULL	NULL	Marketing


