
select p.patname ,p.birthdate, o.opddate,count(*)
from patmst p, opdacpt o
where o.opddate = '20240729'
and o.patid = p.patid
group by p.patname ,p.birthdate, o.opddate


--환자별 접수건수 opddate = '20240729'
--select 환자이름, 생년월일, 접수일, 접수건수
--from patmst, opdacpt
--where 
--count(*) , group by ,patmst opdacpt , 조인
--patname 환자이름, cent||prsnidpre, birthdate 생년월일
