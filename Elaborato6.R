# 1) Caricare i dati del dataset su un dataframe. 
dati = read.csv("2010_Census_Populations_by_Zip_Code.csv")

# 2) Calcolare la popolazione media per giurisdizione utilizzando la popolazione totale
#   di ogni giurisdizione e stamparla in console.
totpop <- sum(dati$Total.Population)
numjur <- nrow(dati)
avaragePop <- totpop/numjur
print(avaragePop)
#Oppure
print(mean(dati$Total.Population))

# 3) Creare una matrice con le 3 seguenti colonne: 
#    Zip Code, Total Males, Total Females e rinominare le colonne
#    della matrice coi nomi Jurisdiction, MalesCount e FemalesCount, poi stamparla in console.

dati2 <- dati[,c(1,4,5)]
matrice <- data.matrix(dati2)
colnames(matrice) <- c("Jurisdiction","MalesCount","FemalesCount")
print(matrice)

# 4) Rimuovere dalla matrice le righe in cui gli uomini sono di più delle donne
#     e stamparla in console.

matrice2 = matrice[matrice[,2] < matrice[,3],]
print(matrice2)

# 5) Estrarre un subset del dataframe contenente gli ZipCode e la popolazione totale
#     di tutte le giurisdizioni con un numero di famiglie inferiori a 15000

family <- subset(x = dati,subset = dati$Total.Households<15000)

# Solamente ZipCode e Popolazione
family <- subset(x = dati,subset = dati$Total.Households<15000,select = c(1,2))

# 6) Salvare sul file Output4.txt il subset ottenuto al punto precedente.
write.table(x = family,file = "Output4.txt",append = FALSE,col.names = TRUE)

# 7) Estrarre un subset del dataframe contenente zip code e popolazione totale nel caso in cui 
#   l'età sia inferiore a 40 e stamparlo in console

age40 <- subset(x = dati,subset = dati$Median.Age<40, select = c(1,2))
print(age40)
