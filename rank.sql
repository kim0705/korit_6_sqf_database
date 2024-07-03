# 출판사를 기준으로 category의 count를 집계한다.
select
	*
from
(select
	rank() over(partition by publisher_id order by book_count desc) as `rank`,
    dense_rank() over(partition by publisher_id order by book_count desc) as `dense_rank`,
	row_number() over(partition by publisher_id order by book_count desc) as `number`,
    pc_count_tb.*
from
(select
	publisher_id,
    category_id,
    count(*) as book_count
from 
	book_tb
group by
	publisher_id,
    category_id) as pc_count_tb) as book_row_number_tb
where 
	number = 1;
