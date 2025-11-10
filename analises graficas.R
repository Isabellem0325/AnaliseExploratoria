#---------------------------------------
# Instalando os pacotes necessários
#---------------------------------------

install.packages("readr")
install.packages("readxl")

#Ativando os pacotes
library(readr)
library(readxl)

#---------------------------------------
# Importando a base de dados
#---------------------------------------

base = read_excel("Base_trabalho.xlsx")

#Visualizando o objeto
View(base)

#---------------------------------------
# Transformando as variáveis qualitativas em fatores
#---------------------------------------

#Verificando quais são qualitativas
str(base)

#Fazendo a Transformação
base$escolaridade = as.factor(base$escolaridade)

#Visualizando a estrutura da base para confirmar mudança
str(base)

#---------------------------------------
# Fazendo uma análise sobre dados faltantes
#---------------------------------------

#Verificando a quantidade de dados ausentes por variável
colSums(is.na(base))

#---------------------------------------
# Fazendo um histograma da variável idade
#---------------------------------------

hist(base$idade,
     main = "Histograma da Idade",
     xlab = "Idade",
     ylab = "Frequência",
     col = "#405E91")

#---------------------------------------
# Fazendo um boxplot da variável tempo_preso
#---------------------------------------

boxplot(base$tempo_preso,
        main = "Bloxplot do tempo preso",
        ylab = "Tempo preso (em meses)",
        col = "#406691")

#---------------------------------------
# Fazendo um boxplot da variável score_periculosidade por escolaridade
#---------------------------------------

boxplot(score_periculosidade ~ escolaridade,
        data = base,
        main = "Score de periculosidade por escolaridade",
        xlab = "Escolaridade",
        ylab = "Score de periculosidade",
        col = "#406d91")

#---------------------------------------
# Fazendo um gráfico de barras para a variável reincidente
#---------------------------------------

barplot(table(base$reincidente),
        main = "Gráfico de barras - Reincidência",
        xlab = "Reincidência",
        ylab = "Frequência",
        col = "#407391")

#---------------------------------------
# Salvando as figuras em pdf ou png
#---------------------------------------

#Opção 1 - Salvando em pdf (aqui ele salvará todos os conteúdos em um único arquivo)
pdf("graficos.pdf")

hist(base$idade,
     main = "Histograma da Idade",
     xlab = "Idade",
     ylab = "Frequência",
     col = "#405E91")

boxplot(base$tempo_preso,
        main = "Bloxplot do tempo preso",
        ylab = "Tempo preso (em meses)",
        col = "#406691")

boxplot(score_periculosidade ~ escolaridade,
        data = base,
        main = "Score de periculosidade por escolaridade",
        xlab = "Escolaridade",
        ylab = "Score de periculosidade",
        col = "#406d91")

barplot(table(base$reincidente),
        main = "Gráfico de barras - Reincidência",
        xlab = "Reincidência",
        ylab = "Frequência",
        col = "#407391")

dev.off()

#Opção 2 - Salvando em png (aqui ele salvará os conteúdos separadamente)
png("hist_idade.png")
hist(base$idade,
     main = "Histograma da Idade",
     xlab = "Idade",
     ylab = "Frequência",
     col = "#405E91")
dev.off()

png("box_tempo_preso.png")
boxplot(base$tempo_preso,
        main = "Bloxplot do tempo preso",
        ylab = "Tempo preso (em meses)",
        col = "#406691")
dev.off()

png("box_score_escolaridade.png")
boxplot(score_periculosidade ~ escolaridade,
        data = base,
        main = "Score de periculosidade por escolaridade",
        xlab = "Escolaridade",
        ylab = "Score de periculosidade",
        col = "#406d91")
dev.off()

png("barras_reincidente.png")
barplot(table(base$reincidente),
        main = "Gráfico de barras - Reincidência",
        xlab = "Reincidência",
        ylab = "Frequência",
        col = "#407391")
dev.off()