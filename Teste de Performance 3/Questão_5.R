library(readxl)
bovespa <- read_excel("D:/Users/Eduardo/Desktop/Eduardo_Marcello_DR2_TP3/bovespa v3.xlsx")
bovespa$SP500
md1 <- mean(bovespa$SP500)
md1
mean(bovespa$SP500)
bovespa[,3]
bovespa$`IBOV\r\nFech`
md2 <- mean(bovespa$`IBOV\r\nFech`)
md2
md1 <- round(md1, 2)
md2 <- round(md2, 2)
tabele_mean <- read.table(textConnection("Variavel media
                                         SP500 1227.49
                                         IBOV 51193.64"), header = TRUE)
save(tabele_mean, file = "Questão5.RData")
