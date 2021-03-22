dados = read.csv("tempo.csv", sep = ";", na.strings="", stringsAsFactors=T)
head(dados)
summary(dados)
#aparencia
conta_aparencia= table(dados$Aparencia)
conta_aparencia
barplot(conta_aparencia, main="Aparencia", xlab="Aparencia")
pie(conta_aparencia, main="Aparencia")
#Vento
conta_vento= table(dados$Vento)
conta_vento
barplot(conta_vento, main="Vento", xlab="Vento")
#Jogar
conta_jogar= table(dados$Jogar)
conta_jogar
barplot(conta_jogar, main="Jogar", xlab="Jogar")
#Temperatura
summary(dados$Temperatura)
boxplot(dados$Temperatura)
hist(dados$Temperatura)
#Umidade
summary(dados$Umidade)
#fora do dominio, numérico - ver idades anormais
dados[dados$Umidade < 0 | dados$Umidade > 100 ,]$Umidade
#Verifica NAs
dados[is.na(dados$Umidade),]
#atribuir mediana a NAs
dados[is.na(dados$Umidade),]$Umidade = median(dados$Umidade,na.rm = T)
#subtituição
dados[dados$Umidade < 0 | dados$Umidade > 100 ,]$Umidade = median(dados$Umidade) 
#buscamos novamente idades anormais
dados[dados$Umidade < 0 | dados$Umidade > 100 ,]
summary(dados$Umidade)
boxplot(dados$Umidade)
hist(dados$Umidadae)

#Tratando NAs do Vento
summary(dados$Vento)
#Verifica NAs
dados[is.na(dados$Vento),]
#substitui
dados[is.na(dados$Vento),]$Vento = 'FALSO'
#Verifica NAs
dados[is.na(dados$Vento),]
summary(dados$Vento)

#Tratamento Temperatura
summary(dados$Temperatura)
#fora do dominio, numérico - ver idades anormais
dados[dados$Temperatura < -130 | dados$Temperatura > 130 ,]$Temperatura
#não temos NAs
dados[is.na(dados$Temperatura),]
#opção, preencher com mediana
median(dados$Temperatura)
#subtituição
dados[dados$Temperatura < -135 | dados$Temperatura > 130 ,]$Temperatura = median(dados$Temperatura) 
#buscamos novamente temperaturas anormais
dados[dados$Temperatura< -135 | dados$Temperatura > 130 ,]$Temperatura
summary(dados$Temperatura)

#Tratamento Aparencia
summary(dados$Aparencia)
#não temos NAs
dados[is.na(dados$Aparencia),]
#opção, preencher com mediana
#subtituição com moda
dados[dados$Aparencia == 'menos' ,]$Aparencia = 'sol' 
#buscamos novamente aparencias
summary(dados$Aparencia)
#remover levels não utilizados
dados$Aparencia =   factor(dados$Aparencia)
#visualizar novamente
summary(dados$Aparencia)
conta_aparencia_2= table(dados$Aparencia)
barplot(conta_aparencia_2, main="Aparencia", xlab="Aparencia")