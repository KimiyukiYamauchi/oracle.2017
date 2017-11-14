select employee_id, hire_date, 
months_between(sysdate, hire_date) tenure,
add_months(hire_date, 6), next_day(hire_date, 'fri'),
last_day(hire_date)
from employees
--where months_between(sysdate, hire_date) < 100
/
