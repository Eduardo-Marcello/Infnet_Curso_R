library(RMySQL)


mydb = dbConnect(MySQL(), 
                 user='****', 
                 password='*****', 
                 dbname='curso_r', 
                 host='localhost')


dbListTables(mydb)

valor_por_estado <- dbSendQuery(mydb, "SELECT uf as UF, avg(valor_ligacao)
as valor_media_telef
FROM curso_r.conta_telef_depto_csv 
GROUP BY uf 
ORDER BY uf")

data <- fetch(valor_por_estado, n=-1)

valor_por_estado

dbSendQuery(mydb, "SET GLOBAL local_infile = true;")
dbWriteTable(mydb, name= "valor_por_estado", value= data, append= TRUE, temporary= FALSE)
