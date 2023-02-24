Create OR ALTER View v_Empregado As 
Select
 e.IdEmpregado,
 e.NomeEmpregado,
 e.Cargo,
 e.Tempo_Emp,
 e.Salario,
 e.Salario * 12 As 'Salario Anual',
 ISNULL(e.Comissao,0) As Comissao,
 e.IdDepto As IdDeptoEmp,
 d.IdDepto,
 d.NomeDepto, 
 Salario + IsNULL(Comissao,0) AS 'Salario Total',
 (Salario + IsNULL(Comissao,0)) * 12 AS 'Salario Total Anual'
From
 Empregado e
Inner Join Departamento d On (d.IdDepto = e.IdDepto)

