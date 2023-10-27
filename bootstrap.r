rm(list = ls())
#                                                                               BOOTSTRAP


library(boot)
summary(Auto) #Base Trabalhada

#Coeficientes do modelo linear usando toda a população
coef(lm(mpg~horsepower, data = Auto))

#Coeficientes do modelo linear usando bootstrap
set.seed(1)
sub1 = sample(392, 1000, replace = T) #(Total de dados, tamanho amostra, com reposição)
coef(lm(mpg~horsepower, data = Auto, subset = sub1))

#Utilizando uma estimativa de erro para o boot
#criando a função

boot.fn <- function(data , index){
  coef(lm(mpg~horsepower , data = data , subset = index))}

boot.fn(Auto , 1:392)

set.seed (1)
boot.fn(Auto , sample (392 , 392, replace = T))

#Calculo do erro padrão de cada estimativa
boot(Auto , boot.fn, 1000)


#Outros valores de erro padrão sem o Bootstrap
summary(lm(mpg~horsepower, data = Auto)) 



#Função quadrática
boot.fn <- function(data , index){
  coef(lm(mpg~horsepower + I(horsepower ^2), data = data , subset = index))} #mp ~poly(horserpower, 2)
set.seed (1)
boot(Auto , boot.fn, 1000)

#Sem o bootstrap
summary(lm(mpg~horsepower + I(horsepower ^2), data = data , subset = index)) #ou #mp ~poly(horserpower, 2))
