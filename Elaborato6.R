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

