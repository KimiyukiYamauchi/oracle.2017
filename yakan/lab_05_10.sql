select 
count(
--	decode(to_char(hire_date, 'yyyy'),
--		'2005', 1, '2006', 1, '2007', 1, '2008', 1,
--		null)
	case to_char(hire_date, 'yyyy') 
	when '2005' then 1
	when '2006' then 1
	when '2007' then 1
	when '2008' then 1
	else null end
) total,
count(
	decode(to_char(hire_date, 'yyyy'),
		'2005', 1,
		null)) "2005",
count(
	decode(to_char(hire_date, 'yyyy'),
		'2006', 1,
		null)) "2006",
count(
	decode(to_char(hire_date, 'yyyy'),
		'2007', 1,
		null)) "2007",
count(
	decode(to_char(hire_date, 'yyyy'),
		'2008', 1,
		null)) "2008"
from employees
/
