col constraint_name for a20
col table_name for a20
col column_name for a20
select table_name, column_name, constraint_name, constraint_type
from user_constraints
natural join user_cons_columns
where table_name = '&table_name'
/
