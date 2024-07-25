query5
문제: DATADICTIONARY D Table에서 최종자료 추출
	
select d.tablename, d.cname column_name, d.cdatatype data_type, decode(d.pkflag, 1, 'P') PK, decode(d.notnullflag, 1, 'NOT NULL') NULL_YN, d.memo
from datadictionary d
where clas = 88
	and tablename in ('OPDACPT', 'PATMST')
	and histseq = (select max(histseq)
				   from datadictionary d2
				   where d.clas = d2.clas
				   		 and d.tablename = d2.tablename
				   		 and d.cname = d2.cname)
order by tablename, displayseq
