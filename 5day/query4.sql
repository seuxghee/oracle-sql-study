select o.patid, o.ordername, o.clas, decode(o.orderstepstate,0,'ó��',3,'����',4,'����') state,
 decode(r.rsvacptstate,0,'������',1,'����','����') acptstate, r.resultstate, --decode ��� �ؼ� ����,��Ÿ���� 
       d.deptkorname, u.usrkorname
from orderinfos o, registinfos r, deptcodes d, usrmst u
where o.patid = '24000034'
  and o.patid = r.patid    --PK���� Join ���� 
  and o.orderdate = r.orderdate
  and o.deptcode = r.deptcode
  and o.slipno = r.slipno
  and o.slipseq = r.slipseq
  and o.orderdrdeptcode = d.deptcode
  and o.orderdrid = u.usrid

