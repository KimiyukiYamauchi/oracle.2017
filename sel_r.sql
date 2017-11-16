col title_id for 999
col title for a20
select title_id, title, member_id, last_name, book_date, act_ret_date
from rental natural join title natural join member
order by title_id, copy_id
/
