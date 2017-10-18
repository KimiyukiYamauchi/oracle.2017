select empno, ename
from employees 
where empno in (
	select salesman_no from orders
	natural join ord_details
	natural join products
	where pname = 'ねりねり消しゴム')
/
