# AnaliseExploratoria

## O que é um commit?

O commit é o registro de modificações feitas no código, que serve para salvar o progresso do projeto com uma mensagem indicando o que foi modificado.

## Resultados gráficos da Análise Exploratória

### Histograma da idade
O histograma mostra a distribuição das idades das pessoas analisadas.
Observa-se que a mior parte das idades se concentra nas faixas intemediárias, com menor frequências nas idades muito baixas ou muito altas.
Essa distribuição sugere que o grupo avaliado possui uma predominância de adultos, com poucos casos nas extremidades de idade.

### Boxplot do tempo preso
O boxplot do tempo preso apresenta a dispersão dos valores em meses.  
É possível visualizar a mediana e a presença de possíveis valores mais afastados (outliers).  
A amplitude do gráfico indica que há uma variação considerável no tempo de prisão entre os indivíduos analisados.

### Boxplot do score de periculosidade por escolaridade
Esse gráfico permite comparar o score de periculosidade entre diferentes níveis de escolaridade.  
Nota-se que há diferenças na mediana e na variabilidade dos valores conforme o nível educacional, indicando que o score pode variar de acordo com o grau de instrução.  
Os boxplots também ajudam a identificar grupos com maior dispersão nos valores de periculosidade.

### Gráfico de barras de reincidência
O gráfico de barras mostra a frequência de pessoas reincidentes e não reincidentes.  
Percebe-se que há uma diferença clara entre as categorias, evidenciando o percentual de indivíduos que voltaram a cometer infrações em relação aos que não reincidiram.  
Esse tipo de visualização é útil para entender o perfil de reincidência no conjunto de dados.

## Medidas de tendência central e de dispersão e suas definições

### Média

A média representa o ponto de equilíbrio dos dados. É calculada somando todos os valores e dividindo pelo número total de observações.

$$\bar{x} = \frac{x_1 + x_2 + \dots + x_n}{n}$$

### Mediana

A mediana é o valor central de um conjunto de dados ordenado. Ela dividade o conjunto em duas partes iguais. Se o número de observações for ímpar, é o valor central; se for par, é média dos dois valores centrais.

-   Se $n$ for ímpar: $$Me = x_{\frac{n+1}{2}}$$

-   Se $n$ for par: $$Me = \frac{x_{\frac{n}{2}} + x_{\frac{n}{2} + 1}}{2}$$

### Variância

A variância mede a dispersão dos dados em relação à média. Quanto maior a variância, mais dispersos estão os valores. è a média dos quadrados das diferenças entre cada valor e a média do conjunto.

$$s^2 = \frac{1}{n-1} \sum_{i=1}^{n}(x_i-\bar{x})^2$$

### Desvio padrão

O desvio padrão mostra o quanto os valores se afastam, em média, da média aritmética. Ela é a raiz quadrada da variância.

$$s = \sqrt{s^2}$$

### Amplitude

A amplitude mostra a diferença entre o maior e o menor valor da amostra, representando a variação total dos dados.

$$A = x_{\text{máx}}-x_{\text{mín}}$$
