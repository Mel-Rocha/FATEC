CREATE OR ALTER VIEW v_DeptoSalario AS
Select 
 IdDepto,
 NomeDepto,
 SUM(Salario) as 'Total Salário',
 COUNT(idEmpregado) as 'Total Empregado',
 AVG(Salario) as 'Média Salário'
From
 v_Empregado
Group by 
 IdDepto,
 NomeDepto
