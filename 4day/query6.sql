select p.patname name, o.opddate odate, count(*)cnt
from patmst p, opdacpt o
where p.sex = 'M'
and  o.opddate between '20220101' and '20220131'
and o.patid = p.patid
group by p.patname,o.opddate
--������ : �ߺ� �߻� , patid�� ��������߰ٴٴ�  ���� ���� ����


-- 2022�� 1�� 1�Ϻ��� 1�� 31�ϱ��� ������ ȯ�� �߿� ������ ������ ȯ�ڸ�
-- ȯ���̸�,�����Ǽ� ��  �������ּ���

