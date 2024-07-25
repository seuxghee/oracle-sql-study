query4
문제: 연도별 실인원,연인원
	
select substr(opddate, 1, 4) "¿¬µµ", count(distinct patid) "½ÇÀÎ¿ø", count(patid) "¿¬ÀÎ¿ø"
from opdacpt
where acptcancelflag = 0
	and ipdflag = 0
group by substr(opddate, 1, 4)
order by substr(opddate, 1, 4) desc
