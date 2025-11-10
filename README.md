# AnaliseExploratoria

## O que é um commit?

O commit é o registro de modificações feitas no código, que serve para salvar o progresso do projeto com uma mensagem indicando o que foi modificado.

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
