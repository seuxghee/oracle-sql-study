select * from (
select patid,
count(*) cnt from opdacpt
where  opddate = '20240729'
--order by patid, opdcnt
group by patid )
