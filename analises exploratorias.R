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
# Obtendo medidas de tendência central e posição
#---------------------------------------
#Variáveis: score_periculosidade, idade, tempo_preso

#Médias
mean(base$score_periculosidade, na.rm = TRUE)
mean(base$idade, na.rm = TRUE)
mean(base$tempo_preso, na.rm = TRUE)

#1º quartil (25%)
quantile(base$score_periculosidade, probs = 0.25, na.rm = TRUE)
quantile(base$idade, probs = 0.25, na.rm = TRUE)
quantile(base$tempo_preso, probs = 0.25, na.rm = TRUE)

#Mediana
median(base$score_periculosidade, na.rm = TRUE)
median(base$idade, na.rm = TRUE)
median(base$tempo_preso, na.rm = TRUE)

#3º quartil (75%)
quantile(base$score_periculosidade, probs = 0.75, na.rm = TRUE)
quantile(base$idade, probs = 0.75, na.rm = TRUE)
quantile(base$tempo_preso, probs = 0.75, na.rm = TRUE)

#---------------------------------------
# Fazendo um gráfico de dispersão entre tempo_preso e score_periculosidade
#---------------------------------------

plot(
  base$tempo_preso,
  base$score_periculosidade,
  main = "Relação entre tempo preso e score de periculosidade",
  xlab = "Tempo preso",
  ylab = "Score de periculosidade"
)

#---------------------------------------
# Calculando a correlação entre as duas variáveis
#---------------------------------------

cor(base$tempo_preso, base$score_periculosidade)

#---------------------------------------
# Obtenha medidas de dispersão (variância, desvio padrão e amplitude)
#---------------------------------------
#Variáveis: score_periculosidade, idade, tempo_preso

#Variância
var(base$score_periculosidade, na.rm = TRUE)
var(base$idade, na.rm = TRUE)
var(base$tempo_preso, na.rm = TRUE)

#Desvio padrão
sd(base$score_periculosidade, na.rm = TRUE)
sd(base$idade, na.rm = TRUE)
sd(base$tempo_preso, na.rm = TRUE)

#Amplitude
max(base$score_periculosidade, na.rm = TRUE)
max(base$idade, na.rm = TRUE)
max(base$tempo_preso, na.rm = TRUE)