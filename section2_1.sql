select 	
department, 
position
        ,count(case when substr(e.hired_date,6,2) in ('01','02','03') then e.id end) as Q1
        ,count(case when substr(e.hired_date,6,2) in ('04','05','06') then e.id end) as Q2
        ,count(case when substr(e.hired_date,6,2) in ('07','08','09') then e.id end) as Q3
        ,count(case when substr(e.hired_date,6,2) in ('10','11','12') then e.id end) as Q4
from
globant.employees e
join globant.jobs j on (e.id_job = j.id)
join globant.departments d on (e.id_deparment = d.id)
where substr(e.hired_date,1,4) = '2021'
group by position, department
order by department, position;