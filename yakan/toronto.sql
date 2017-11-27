select last_name, job_id, department_id, department_name
from employees join departments using(department_id)
join locations 
--on departments.location_id = locations.location_id
using(location_id)
--natural join locations
where lower(city) = 'toronto'
/
