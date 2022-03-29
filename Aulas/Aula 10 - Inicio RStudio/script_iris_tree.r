library(party);
if (!is.null(getwd()))setwd("D:\curso_r");
iris_tree <-ctree(Species~.,data=iris);
plot(iris_tree)