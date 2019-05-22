# Medindo a diversidade biologica - Ecologia de Campo - 2018

# Nesse exemplo esatremos usando o trabalho de Beca, G., et al. 2017. 
#High mammal species turnover in forest patches immersed in biofuel plantations. 
#Biological Conservation 210:352-359.
 
rm(list = ls())

install.packages("vegan")
library("vegan")

# Primeiro buscar sua area de trabalho
setwd("~/Dropbox/R Codes/Ecologia de Campo/Landscape mammals")


# Depois abaixar os dados
beca<-read.csv("beca.csv",header = T)
head(beca)
names(beca)

# Qual a relacao entre a diversidade de mamiferos (S) e o tamanho do fragmento (Area)?
# Nossa hipotese inicial ?? Quanto maior o fragmento mais especies possui (relacao especie-area que voc??
#aprendeu em biogeografia de ilhas)

plot(beca$S~beca$Forest_cover, xlab="Cobertura %", 
     ylab="Riqueza")

### Como testar se a regressao e' significativa?
modelo1 <- lm(beca$S~beca$Forest_cover)
summary(modelo1)
abline(modelo1)

library(visreg)
fit <- lm(S~Forest_cover,data=beca)
visreg(fit)

plot(beca$SF~beca$Forest_cover, xlab="Cobertura %", 
     ylab="Riqueza", pch=19)
modelo2 <- lm(beca$SF~beca$Forest_cover)
summary(modelo2)
abline(modelo2)

fit2 <- lm(SF~Forest_cover,data=beca)
visreg(fit2)


