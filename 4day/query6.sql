select p.patname name, o.opddate odate, count(*)cnt
from patmst p, opdacpt o
where p.sex = 'M'
and  o.opddate between '20220101' and '20220131'
and o.patid = p.patid
group by p.patname,o.opddate
--문제점 : 중복 발생 , patid로 구분해줘야겟다는  생각 도달 못함


-- 2022년 1월 1일부터 1월 31일까지 접수된 환자 중에 성별이 남성인 환자를
-- 환자이름,접수건수 로  집계해주세요

