/* selecionando a quantidade de funcionários*/ 

select * from funcionarios;

/* contando o número de funcionários */

select count(*) from funcionarios;

/* agrupando com o sexo */

select sexo, count(*) as "Quantidade" from funcionarios
group by sexo;


/* agrupando por departamento */

select departamento, count (*) as "Quantidade"
from funcionarios
group by departamento;


/*exibindo o máximo salário resultado= 149929*/
select max(salario) as "Salario maximo"
from funcionarios;

/* exibindo o mínimo salário resultado=40138*/

select min(salario) as "Salario minimo"
from funcionarios;

/* Exibindo o máximo e o mínimo em cada
departamento */

select departamento, min(salario) as "Salario menor", max(salario) as "Salario maior"
from funcionarios
group by departamento;

/* Exibindo o máximo e o mínimo por sexo */

select sexo, min(salario) as "Salario menor", max(salario) as "Salario maior"
from funcionarios 
group by sexo; 