SELECT * FROM study.sample_movie_tb;
    
insert into producer_tb 
select
	0,
    producer
from
	sample_movie_list_tb
group by
	producer;
    
insert into dvd_publisher_tb 
select
	0,
    dvd_publisher
from
	sample_movie_list_tb
group by
	dvd_publisher;
    
    
update 
	sample_movie_list_tb smt
    left outer join producer_tb pt on(pt.producer_name = smt.producer)
    left outer join dvd_publisher_tb dpt on(dpt.dvd_publisher_name = smt.dvd_publisher)

set
	smt.producer_id = pt.producer_id,
	smt.dvd_publisher_id = dpt.dvd_publisher_id;
    
insert into movie_tb
	select
		0,
        registration_number,
        title,
        producer_id,
        dvd_publisher_id,
        dvd_publication_year,
        database_date
	from
		sample_movie_list_tb;