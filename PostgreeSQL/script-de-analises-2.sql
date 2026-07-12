/*mostrando uma quantidade de linhas dos funcionários*/

select * from funcionarios
limit 20;

/*soma dos salarios*/

select sum(salario)
from funcionarios;

/* qual é o montante de cada departamento */

select departamento, sum(salario) 
from funcionarios
group by departamento ;

/*soma do salario por sexo*/

select sexo, sum(salario) 
from funcionarios
group by sexo;

/*soma do salario por sexo*/
SELECT sexo, sum(salario)
FROM funcionarios
GROUP BY sexo
ORDER BY sexo ASC;

/*soma do salario por sexo*/
SELECT sexo, sum(salario)
FROM funcionarios
GROUP BY sexo
ORDER BY sexo DESC;

/*projeção da média e da soma por departamento*/
select departamento, avg(salario), sum(salario)
from funcionarios 
group by departamento; 


