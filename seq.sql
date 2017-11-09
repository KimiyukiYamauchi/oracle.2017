col min_value for 9999
col cache_size for 9999
col last_number 9999
select min_value, cache_size, last_number
from user_sequences
where sequence_name = upper('&sequence_name')
/
