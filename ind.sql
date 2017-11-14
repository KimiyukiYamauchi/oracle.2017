col column_name for a20
col index_name for a20
select column_name, index_name
from user_indexes
natural join user_ind_columns
where table_name = upper('&table_name')
/
