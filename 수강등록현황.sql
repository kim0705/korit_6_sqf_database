select * from 수강등록현황;

select 
	*
from 
	수강등록현황 m
    left outer join 회원 as u on(u.회원번호 = m.회원번호)
    left outer join 프로그램 as p on(p.프로그램번호 = m.프로그램번호)
    left outer join 강사 as pd on(pd.강사번호 = p.강사번호)
    left outer join 학교 as s on(s.학교번호 = pd.학교번호);