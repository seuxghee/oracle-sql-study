
select p.patname ,p.birthdate, o.opddate,count(*)
from patmst p, opdacpt o
where o.opddate = '20240729'
and o.patid = p.patid
group by p.patname ,p.birthdate, o.opddate


--ȯ�ں� �����Ǽ� opddate = '20240729'
--select ȯ���̸�, �������, ������, �����Ǽ�
--from patmst, opdacpt
--where 
--count(*) , group by ,patmst opdacpt , ����
--patname ȯ���̸�, cent||prsnidpre, birthdate �������
