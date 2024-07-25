select o.patid "환자ID", p.patname "환자명", to_char(to_date(o.opddate, 'yyyymmdd'), 'yyyy/mm/dd') "내원일", o.deptcode "진료과코드", d.deptkorname "진료과명", o.chrgdrid "담당의ID", u.usrkorname "담당의사명"
from opdacpt o, patmst p, deptcodes d, usrmst u
where o.patid = p.patid
	and o.deptcode = d.deptcode
	and o.chrgdrid = u.usrid
	and o.acptcancelflag = 0
	and o.ipdflag = 0
	and o.opddate between '20230101' and '20241231'
order by o.opddate, o.patid
