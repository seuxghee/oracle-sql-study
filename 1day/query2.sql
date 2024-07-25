query2
문제:2023년 01월 01일 ~ 2024년 12월31일까지의 진료과별 환자내원수
	
select o.deptcode "진료과코드", d.deptkorname "진료과명", count(*) "내원수"
from opdacpt o, deptcodes d
where o.deptcode = d.deptcode
	and o.acptcancelflag = 0
	and o.ipdflag = 0
	and o.opddate between '20230101' and '20241231'
group by o.deptcode, d.deptkorname
order by o.deptcode
