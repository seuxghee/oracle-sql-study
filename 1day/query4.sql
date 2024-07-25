select substr(opddate, 1, 4) "연도", count(distinct patid) "실인원", count(patid) "연인원"
from opdacpt
where acptcancelflag = 0
	and ipdflag = 0
group by substr(opddate, 1, 4)
order by substr(opddate, 1, 4) desc
