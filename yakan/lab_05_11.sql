select job_id,
count(
	decode(department_id, 20, job_id, null)
) "Dept 20",
count(
	decode(department_id, 50, job_id, null)
) "Dept 50",
count(
	decode(department_id, 80, job_id, null)
) "Dept 80",
count(
	decode(department_id, 90, job_id, null)
) "Dept 90",
count(*) total
from employees
group by job_id
/
