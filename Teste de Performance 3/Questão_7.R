library(RODBC)
library(sqldf)

if (!is.null(getwd())) setwd("D:/Users/Eduardo/Documents/Curso_R");

conexao <- odbcConnect("cursor", case = "postgresql", believeNRows=FALSE)

valor_por_estado <- sqlQuery(conexao, "SELECT uf as UF, avg(valor_ligacao)
as valor_media_telef
FROM curso_r.conta_telef_depto_csv 
GROUP BY uf 
ORDER BY uf")

sqlSave(conexao, valor_por_estado,"curso_r.valor_por_estado")

valor_por_estado