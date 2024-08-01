select o.patid, o.ordername, o.clas, decode(o.orderstepstate,0,'처방',3,'접수',4,'진행') state,
 decode(r.rsvacptstate,0,'미접수',1,'접수','진행') acptstate, r.resultstate, --decode 사용 해서 상태,나타내기 
       d.deptkorname, u.usrkorname
from orderinfos o, registinfos r, deptcodes d, usrmst u
where o.patid = '24000034'
  and o.patid = r.patid    --PK끼리 Join 해줌 
  and o.orderdate = r.orderdate
  and o.deptcode = r.deptcode
  and o.slipno = r.slipno
  and o.slipseq = r.slipseq
  and o.orderdrdeptcode = d.deptcode
  and o.orderdrid = u.usrid

