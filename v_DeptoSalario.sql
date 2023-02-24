CREATE OR ALTER VIEW v_DeptoSalario AS
Select 
 IdDepto,
 NomeDepto,
 SUM(Salario) as 'Total Sal�rio',
 COUNT(idEmpregado) as 'Total Empregado',
 AVG(Salario) as 'M�dia Sal�rio'
From
 v_Empregado
Group by 
 IdDepto,
 NomeDepto
