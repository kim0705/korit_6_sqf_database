# 트랜잭션(Transaction)

set @name = "김준일";
select @name;

select @@autocommit;
set autocommit = 0;

insert into master_tb
values
	(0, 6, 2);

# autocommit = 0일 때 commit을 하지 않으면 데이터가 날아감
commit; 