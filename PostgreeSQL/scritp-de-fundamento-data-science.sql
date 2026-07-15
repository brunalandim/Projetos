create view vw_relatorio_das_maquinas
as
select maquinas, 
max(quantidade) as MAXIMA,
min(quantidade) as MINIMA,
(max(quantidade) - min(quantidade)) as amplitude,
Round(stddev_pop(quantidade)::numeric,2) as desvio,
Round(var_pop(quantidade)::numeric,2) as conf_var,
percentile_cont(0.5) within group (order by quantidade)  as mediana
from maquinas 
group by maquinas 
order by 4 desc; 


select * from vw_relatorio_das_maquinas;



select * from maquinas
limit 2;
