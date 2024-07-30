select * from totrsvinfos
--where patid in ('','','','')
--where patid in (select paid from opdaccpt where opddate = '20240729')
--where rsvdate >= '20240730';

--2024년 7월 30일 이후 (포함 ) 로 예약되어 있는 환자를
--진료과별로 조회

-- 1. 환자 아이디, 환자 이름, 진료과,예약일 (rsvdate) ,의사명  --> patmst, totrsvinfos,usrmst
select usrkorname from usrmst u, tostrsvinfos t
where t.chargedrid = u.usrid  

--2.
