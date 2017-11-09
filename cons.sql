-- col constraint_name for a20
col table_name for a20
col column_name for a20
col search_condition for a20
col r_constraint_name for a20
-- col r_owner for a20
select column_name, constraint_name, constraint_type, 
search_condition, r_constraint_name
from user_constraints
natural join user_cons_columns
where table_name = upper('&table_name')
order by column_name
/
