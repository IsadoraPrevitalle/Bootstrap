# Bootstrap
Bootstrap em Rstudio
O Bootstrap é uma técnica estatística usada para estimar a distribuição de uma estatística de interesse a partir de uma amostra de dados, com objetivo principal de fornecer uma maneira de realizar inferências estatísticas e fazer estimativas quando não se conhecem as propriedades da distribuição da população subjacente ou quando a amostra é pequena.

O Bootstrap funciona da seguinte maneira:

1. **Amostra Original**: Você começa com uma amostra de dados da população de interesse.

2. **Reamostragem**: Em seguida, você gera várias amostras de tamanho igual à amostra original (com reposição). Isso significa que um mesmo elemento da amostra original pode ser selecionado várias vezes em uma amostra bootstrap e até mesmo não ser selecionado em outras.

3. **Estimação da Estatística de Interesse**: Em cada amostra bootstrap, você calcula a estatística de interesse. Isso pode ser a média, a mediana, a variância, um coeficiente de regressão, ou qualquer outra medida estatística.

4. **Distribuição das Estatísticas**: Após realizar muitas amostragens bootstrap (geralmente milhares), você obtém uma coleção de estatísticas de interesse. Essa coleção permite estimar a distribuição da estatística de interesse.

5. **Intervalos de Confiança e Testes de Hipóteses**: Com base na distribuição das estatísticas de bootstrap, você pode calcular intervalos de confiança para a estatística de interesse e realizar testes de hipóteses. Isso é particularmente útil quando não se pode fazer suposições sobre a distribuição populacional subjacente.

O Bootstrap é útil em várias situações, incluindo:

- Quando não é possível obter uma amostra grande o suficiente para fazer inferências robustas.
- Quando a distribuição da população subjacente é desconhecida ou não segue uma distribuição teórica conhecida.
- Para calcular intervalos de confiança para estatísticas de interesse.
- Para realizar testes de hipóteses não paramétricos.
- Na validação de modelos estatísticos e de aprendizado de máquina.

Em resumo, o Bootstrap é uma ferramenta valiosa em estatística que permite fazer inferências sobre populações e estimar propriedades da distribuição de estatísticas de interesse de maneira robusta e flexível, independentemente das suposições sobre a distribuição subjacente.
