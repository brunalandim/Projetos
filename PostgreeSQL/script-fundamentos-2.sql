
/*criação da tabela view*/
CREATE TABLE MAQUINAS (

MAQUINAS varchar(20),
DIA INT, 
QUANTIDADE float

)

/*comando para importar arquivos*/
copy maquinas 
from 'C:\Program Files\PostgreSQL\LogMaquinas.csv'
delimiter ','
CSV HEADER;

select * from maquinas;

/* para calcular a moda*/

select maquinas, quantidade, count(*) as moda 
from maquinas
group by maquinas, quantidade
order by 3 desc;

/* relatório com moda e média */

select maquinas, quantidade, count(*) as moda, avg(quantidade) as media
from maquinas 
group by maquinas, quantidade 
order by 4 desc;

/* qual moda da qta de cada máquina*/ 
select maquinas, quantidade, count(*) as moda, avg(quantidade) as media
from maquinas
where maquinas = 'Maquina 03'
group by maquinas, quantidade 
order by 3 desc
Limit 1;

/*relatório de máxima, minimo, media, amplitude*/

select maquinas, avg(quantidade) as media,
max(quantidade) as Maximo, 
min(quantidade) as Minimo, 
(max(quantidade) - min(quantidade)) as Amplitude
from maquinas
group by maquinas
order by 4 desc;