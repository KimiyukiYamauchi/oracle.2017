select index_name
from user_indexes
where table_name = upper('&table_name')
/
