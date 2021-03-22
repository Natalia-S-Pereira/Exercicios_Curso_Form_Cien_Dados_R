# 1
Ana = 8L;
Paulo = 12L;
Ana
class(Ana)
Paulo
class(Paulo)

mais_velho= ifelse (Ana > Paulo, "A menina é mais velha", "A menino é mais velho")
mais_velho

# 2
bod= class(BOD)
bod

# 3
x= c(1,2,3,4,5,6,7,8,9,10)

for (i in 1:10){
    if (x[i]%% 2==0){
    print(x[i])
}
}

# 4
ultimas_linhas= tail(women, 10)
ultimas_linhas

#5
novairis = iris[50:100,c(2,3)]
plot(novairis)

#6
x= c(2,4,6,8,10)
y= c(1,3,5,7,9)
print(x+y)

#7
dim(CO2)[1]
dim(CO2)[2]
rownames(CO2)
colnames(CO2)


