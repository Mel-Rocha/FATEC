CREATE OR ALTER VIEW v_SalarioMenorQueMedia AS
sELECT 
 e.*, 
 v.NomeDepto,
 v.[Total Sal�rio],
 v.[Total Empregado],
 v.[M�dia Sal�rio]
fROM 
 Empregado e
Inner JOIN v_DeptoSalario v On (v.iddepto = e.IdDepto)
WHERE 
 salario <= [M�dia Sal�rio] 
 
 