select o.patid "ȯ��ID", p.patname "ȯ�ڸ�", to_char(to_date(o.opddate, 'yyyymmdd'), 'yyyy/mm/dd') "������", o.deptcode "������ڵ�", d.deptkorname "�������", o.chrgdrid "�����ID", u.usrkorname "����ǻ��"
from opdacpt o, patmst p, deptcodes d, usrmst u
where o.patid = p.patid
	and o.deptcode = d.deptcode
	and o.chrgdrid = u.usrid
	and o.acptcancelflag = 0
	and o.ipdflag = 0
	and o.opddate between '20230101' and '20241231'
order by o.opddate, o.patid
