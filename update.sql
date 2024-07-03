# 데이터 수정(DML - UPDATE)

select * from student_tb;

select 
	student_id
from 
	student_tb
where
	student_name = "김준오";
    
update 
	student_tb
set 	
	email = "kii1318@gmail.com"
where 
	student_id = (select 
						tmep_student_tb.student_id
				  from 
						(select * from student_tb) as tmep_student_tb
				  where
						tmep_student_tb.student_name = "김준사");
			
update 
	student_tb
set 
	phone = "010-1234-4321",
    email = "skjil1218@naver.com"
where
	student_id = 3;