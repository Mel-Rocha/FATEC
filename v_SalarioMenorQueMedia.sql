CREATE OR ALTER VIEW v_SalarioMenorQueMedia AS
sELECT 
 e.*, 
 v.NomeDepto,
 v.[Total Salário],
 v.[Total Empregado],
 v.[Média Salário]
fROM 
 Empregado e
Inner JOIN v_DeptoSalario v On (v.iddepto = e.IdDepto)
WHERE 
 salario <= [Média Salário] 
 
 