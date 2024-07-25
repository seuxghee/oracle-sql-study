query3
문제2023년 01월 01일 ~ 2024년 12월 31일까지의 진료과별 환자내원수(가로 정렬)
	
select '내원수' "진료과코드",
	   count(decode(o.deptcode, 'AK', 1)) "AK",
	   count(decode(o.deptcode, 'AK2', 1)) "AK2",
	   count(decode(o.deptcode, 'ANE', 1)) "ANE",
	   count(decode(o.deptcode, 'CV02', 1)) "CV02",
	   count(decode(o.deptcode, 'ER', 1)) "ER",
	   count(decode(o.deptcode, 'GS08', 1)) "GS08",
	   count(decode(o.deptcode, 'HC', 1)) "HC",
	   count(decode(o.deptcode, 'IM05', 1)) "IM05",
       count(decode(o.deptcode, 'IM13', 1)) "IM13",
	   count(decode(o.deptcode, 'IM16', 1)) "IM16",
	   count(decode(o.deptcode, 'IM22', 1)) "IM22",
	   count(decode(o.deptcode, 'IM24', 1)) "IM24",
	   count(decode(o.deptcode, 'IM25', 1)) "IM25",
	   count(decode(o.deptcode, 'IM28', 1)) "IM28",
	   count(decode(o.deptcode, 'IM29', 1)) "IM29",
	   count(decode(o.deptcode, 'NE03', 1)) "NE03",
	   count(decode(o.deptcode, 'NR01', 1)) "NR01",
	   count(decode(o.deptcode, 'NS01', 1)) "NS01",
	   count(decode(o.deptcode, 'OS01', 1)) "OS01",
	   count(decode(o.deptcode, 'OS15', 1)) "OS15",
	   count(decode(o.deptcode, 'OS18', 1)) "OS18",
	   count(decode(o.deptcode, 'OS19', 1)) "OS19",
	   count(decode(o.deptcode, 'OS22', 1)) "OS22",
	   count(decode(o.deptcode, 'OS23', 1)) "OS23",
	   count(decode(o.deptcode, 'OS25', 1)) "OS25",
	   count(decode(o.deptcode, 'OS26', 1)) "OS26",
	   count(decode(o.deptcode, 'OS27', 1)) "OS27",
	   count(decode(o.deptcode, 'PD02', 1)) "PD02",
	   count(decode(o.deptcode, 'PU', 1)) "PU",
	   count(decode(o.deptcode, 'PU01', 1)) "PU01",
	   count(decode(o.deptcode, 'PU01', 1)) "PU01"
from opdacpt o
where o.acptcancelflag = 0
	and o.ipdflag = 0
	and o.opddate between '20230101' and '20241231'
