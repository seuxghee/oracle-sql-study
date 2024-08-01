select o.patid, o.ordername, o.clas, o.orderstepstate, r.rsvacptstate, r.resultstate
from orderinfos o, registinfos r
where o.patid = '24000034'
  and o.patid = r.patid
  and o.orderdate = r.orderdate
  and o.deptcode = r.deptcode
  and o.slipno = r.slipno
  and o.slipseq = r.slipseq
