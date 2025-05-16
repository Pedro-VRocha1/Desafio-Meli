# Análises no Power BI: Um Olhar sobre a Argentina

As seguintes visualizações foram criadas no Power BI para analisar diferentes aspectos socioeconômicos e tecnológicos da Argentina, utilizando dados históricos.

## 1. Acesso à Internet na Argentina

![image](https://github.com/user-attachments/assets/509c5841-10e8-4cd3-afed-35e3f7b69387)


**País em Foco:** Argentina

**Análise:**
Este gráfico de linhas ilustra a evolução do acesso à internet na população argentina desde 1990 até aproximadamente 2023.

* **Eixo Y (Vertical):** Número de Pessoas (em milhões)
* **Eixo X (Horizontal):** Ano
* **Linha Verde:** Representa o número de "Pessoas com Internet".
* **Linha Vermelha:** Representa o número de "Pessoas sem Internet".

**Principais Observações:**

* Observa-se um crescimento exponencial no número de pessoas com acesso à internet a partir do início dos anos 2000.
* Consequentemente, o número de pessoas sem acesso à internet mostra uma tendência de queda acentuada no mesmo período.
* Nos anos mais recentes, a grande maioria da população analisada já possui acesso à internet, enquanto uma parcela menor permanece offline.

**Indicadores do Banco Mundial Utilizados:**

* `IT.NET.USER.ZS` (Indivíduos usando a Internet, % da população)
* `SP.POP.TOTL` (População total) - para calcular os valores absolutos.

---

## 2. Tipos de Acesso à Internet na Argentina

![image](https://github.com/user-attachments/assets/d528a717-4019-4ab1-b15f-647c09ccd54e)


**País em Foco:** Argentina

**Análise:**
Este gráfico de colunas agrupadas compara a penetração dos diferentes tipos de acesso à internet na Argentina, de 2000 até aproximadamente 2022.

* **Eixo Y (Vertical):** Número de Usuários (presumivelmente por 100 pessoas, uma métrica comum para este tipo de indicador)
* **Eixo X (Horizontal):** Ano
* **Colunas Azul Escuro:** "Usuários por Celular"
* **Colunas Azul Claro:** "Usuários por Banda Fixa"

**Principais Observações:**

* O acesso à internet via celular ("Usuários por Celular") é dominantemente maior em comparação com o acesso via banda larga fixa ("Usuários por Banda Fixa") durante todo o período analisado.
* Ambos os tipos de acesso mostram uma tendência geral de crescimento ao longo dos anos.
* O crescimento do acesso móvel parece ter sido particularmente rápido na primeira década dos anos 2000, estabilizando-se em níveis elevados posteriormente.
* O acesso por banda larga fixa também cresce, mas de forma mais gradual e em uma escala menor de penetração.

**Indicadores do Banco Mundial Utilizados:**

* `IT.CEL.SETS.P2` (Assinaturas de telefonia móvel celular por 100 pessoas)
* `IT.NET.BBND.P2` (Assinaturas de banda larga fixa por 100 pessoas)

---

## 3. Crescimento do Mercado de TI na Argentina

![image](https://github.com/user-attachments/assets/cfe2bf00-0e8c-4128-aa03-e30fb56f0ecf)


**País em Foco:** Argentina

**Análise:**
Este gráfico de linha demonstra a trajetória de crescimento do mercado de Tecnologia da Informação (TI) na Argentina, entre 2010 e aproximadamente 2023.

* **Eixo Y (Vertical):** Valor do Mercado (em milhões de unidades monetárias, possivelmente US$)
* **Eixo X (Horizontal):** Ano

**Principais Observações:**

* O mercado de TI na Argentina exibiu flutuações ao longo do período.
* Houve um crescimento inicial de 2010 a 2011, seguido por um período de declínio ou estagnação até por volta de 2014-2015.
* A partir de 2016, observa-se uma tendência de crescimento mais robusta, atingindo um pico em 2022.
* O último ano visível (aproximadamente 2023) sugere uma leve retração após o pico.

**Indicadores do Banco Mundial Utilizados:**

* `BX.GSR.CCIS.CD` (Exportações de serviços de TIC - Tecnologias da Informação e Comunicação, Balança de Pagamentos, US$ atuais) ou um indicador similar relacionado ao valor do mercado de TI.

---

## 4. Análise Combinada: PIB per Capita e Crescimento de Mercado na Argentina

![image](https://github.com/user-attachments/assets/53f4fe68-754a-4822-bbe7-063f967c1b89)


**País em Foco:** Argentina

**Análise:**
Esta visualização apresenta dois gráficos de linha sobrepostos, analisando o Produto Interno Bruto (PIB) per capita e uma métrica de "Crescimento do mercado" ao longo dos anos na Argentina.

### Gráfico Superior: PIB per capita por Ano

* **Eixo Y (Vertical):** Valor do PIB per capita (em milhões de unidades monetárias, provavelmente US$)
* **Eixo X (Horizontal):** Ano (1990 a aproximadamente 2021)

**Principais Observações:**
* O PIB per capita da Argentina mostrou volatilidade, com períodos de crescimento e crises econômicas visíveis (por exemplo, a queda acentuada no início dos anos 2000 e períodos de declínio mais recentes após 2017).
* Observam-se fases de recuperação e crescimento em outros momentos, como em meados dos anos 2000 e início dos anos 2010.

### Gráfico Inferior: Crescimento do mercado por Ano

* **Eixo Y (Vertical):** Valor/Taxa de Crescimento do Mercado (em milhões de unidades monetárias)
* **Eixo X (Horizontal):** Ano (1990 a aproximadamente 2021)

**Principais Observações:**
* Este indicador mostra um valor expressivamente alto em 1990, seguido por uma queda drástica nos anos subsequentes.
* Após a queda inicial, o "crescimento do mercado" permanece em níveis relativamente baixos e estáveis, com pequenas flutuações ao longo das décadas.
* A natureza exata deste "mercado" precisaria ser confirmada pela fonte do indicador (poderia ser uma taxa de crescimento anual de um setor específico ou um subcomponente do mercado de TI discutido anteriormente, mas com uma normalização ou escala diferente).

**Indicadores do Banco Mundial Utilizados:**

* **Para PIB per capita:** `NY.GDP.PCAP.CD` (PIB per capita, US$ atuais)
* **Para Crescimento do Mercado:** Poderia ser uma taxa de crescimento anual de um indicador como `GFDD.OM.02`.
