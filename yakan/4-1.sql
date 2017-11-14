select last_name || ' earns ' || 
to_char(salary,'fm$99,999.00') || ' monthly but wants ' ||
to_char(salary*3, 'fm$99,999.00') || '.' 
from employees
where department_id = 60
/
