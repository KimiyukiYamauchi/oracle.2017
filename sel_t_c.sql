col title for a20
select title_id, title, copy_id, status
from title_copy natural join title
order by title_id, copy_id
/
