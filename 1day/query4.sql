select substr(opddate, 1, 4) "����", count(distinct patid) "���ο�", count(patid) "���ο�"
from opdacpt
where acptcancelflag = 0
	and ipdflag = 0
group by substr(opddate, 1, 4)
order by substr(opddate, 1, 4) desc
