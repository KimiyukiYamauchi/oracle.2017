select job_id, count(*) 
from employees
where job_id = '&job_id'
group by job_id
/
