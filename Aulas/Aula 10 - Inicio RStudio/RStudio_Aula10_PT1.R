c <- c(1,2,3)
c2 <- 1:10
c3 <- 1:10 * 2
c4 <- rep(1,5)
c5 <- c
c5 <- c(c, c2, c3, c4)
c5 <- scan()
c6 <- read.table(textConnection("trat
                                resposta
                                a 10
                                a 12
                                b 15
                                b 20
                                c 12
                                c 5
                                d 8
                                d 10
                                "), header = TRUE)
c6 <- read.table(textConnection("trat resposta
a 10
a 12
b 15
b 20
c 12
c 5
d 8
d 10"), header = TRUE)

str(c6)
c6 <- cbind(c6, media = with(c6, ave(c6$'resposta', c6$'trat',
                                     FUN = mean)))
texto <- readLines(n = 1)
texto2 <- readLines(n = 2)
texto3 <- readLines(n = 1)

if (!is.null(getwd())) setwd("D:/Users/Eduardo/Documents/Curso_R");
getwd()

iris_txt <- read.table('iris_txt.txt', header = T, dec = ',')
iris_txt <- read.table('iris_txt.txt', header = T, sep = ',')
