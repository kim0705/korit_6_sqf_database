call usp_add_master("이병안", "010-8888-8888");

set @total = 0;
call usp_mod_score("이병안", 90, 0, 70, @total);

select @total;

set @number = 10;
call usp_square(@number);
select @number;