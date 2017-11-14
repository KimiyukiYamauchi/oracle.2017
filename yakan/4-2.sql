select last_name, hire_date
,to_char(next_day(add_months(hire_date, 6), 'mon'),
 'fmDay,"the" Ddspth "of" Month,YYYY') REVIEW
from employees
where department_id = 60
/
