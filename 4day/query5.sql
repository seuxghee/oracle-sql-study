select * from totrsvinfos
--where patid in ('','','','')
--where patid in (select paid from opdaccpt where opddate = '20240729')
--where rsvdate >= '20240730';

--2024�� 7�� 30�� ���� (���� ) �� ����Ǿ� �ִ� ȯ�ڸ�
--��������� ��ȸ

-- 1. ȯ�� ���̵�, ȯ�� �̸�, �����,������ (rsvdate) ,�ǻ��  --> patmst, totrsvinfos,usrmst
select usrkorname from usrmst u, tostrsvinfos t
where t.chargedrid = u.usrid  

--2.
