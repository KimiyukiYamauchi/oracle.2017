col cache_size for 9999
col last_number for 9999
select cache_size, last_number
from user_sequences
where sequence_name = upper('&sequence_name')
/
