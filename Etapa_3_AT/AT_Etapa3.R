library(readxl)
library(tidyverse)

if (!is.null(getwd())) setwd("D:/Users/Eduardo/Documents/Curso_R/Etapa_3_AT")

# Leitura do arquvio xlsx
at <- read_excel("D:/Users/Eduardo/Documents/Curso_R/Etapa_3_AT/vendasExemploBR.xlsx")

# Craindo uma nova coluna Vendas por desconto
at["VENDAS_POR_DESCONTO"] <- at$VENDAS - (at$VENDAS * at$DESCONTO)

# Ordenando as colunas do df
at <- at %>% select(ORDEM, NOME, ESTADO, VENDAS, DESCONTO, VENDAS_POR_DESCONTO, everything())

# Criando um gráfico de linhas das vendas por desconto em relação a data
plot(x = at$DATA, y = at$VENDAS_POR_DESCONTO, type = "l")

# Salvando o gráfico em uma imagem jpeg
jpeg(file="Gráfico_Venda_Real_por_Data.jpeg")
plot(x = at$DATA, y = at$VENDAS_POR_DESCONTO, type = "l")
dev.off()
