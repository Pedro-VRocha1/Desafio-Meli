# Projeto de Análise de Dados do Banco Mundial

Este projeto demonstra um pipeline de dados para coletar, processar e visualizar indicadores de desenvolvimento de diversos países, utilizando dados da API do Banco Mundial.

## Arquitetura do Projeto

O fluxo de dados segue as seguintes etapas, conforme ilustrado abaixo:

![image](https://github.com/user-attachments/assets/328c2a87-712e-4eb2-a72a-7572780b0ab5)


* **Fonte de Dados (Ambiente Externo):** Os dados são extraídos da API do Banco Mundial.
* **Coleta de Dados:** Um script Python é utilizado para interagir com a API e buscar os dados necessários.
* **Armazenamento e Processamento (Data Warehouse):** Os dados coletados são armazenados e processados no Google BigQuery. O processo é dividido em camadas:
    * **Raw:** Dados brutos como foram extraídos da API.
    * **Filtered:** Dados limpos, transformados ou filtrados para análise.
    * **Access:** Camada final otimizada para consulta e visualização.
* **Visualização:** Os dados da camada de acesso são utilizados para criar dashboards e visualizações (por exemplo, utilizando Google Looker Studio, Power BI ou ferramenta similar).

## Fontes de Dados

Os dados para este projeto foram obtidos através da API do Banco Mundial, utilizando os seguintes endpoints e indicadores:

1.  **Informações Gerais dos Países:**
    * Endpoint: `https://api.worldbank.org/v2/country?format=json&per_page=300`
    * Descrição: Lista de países e metadados associados.

2.  **Indicadores Específicos:**
    * **Indivíduos usando a Internet (% da população)**
        * Código: `IT.NET.USER.ZS`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/IT.NET.USER.ZS?format=json&per_page=20000`
    * **Assinaturas de banda larga fixa (por 100 pessoas)**
        * Código: `IT.NET.BBND.P2`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/IT.NET.BBND.P2?format=json&per_page=20000`
    * **Assinaturas de telefonia móvel celular (por 100 pessoas)**
        * Código: `IT.CEL.SETS.P2`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/IT.CEL.SETS.P2?format=json&per_page=20000`
    * **Servidores de Internet seguros (por 1 milhão de pessoas)**
        * Código: `IT.NET.SECR.P6`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/IT.NET.SECR.P6?format=json&per_page=20000`
    * **Exportações de serviços de TIC (Balança de Pagamentos, US$ atuais)**
        * Código: `BX.GSR.CCIS.CD`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/BX.GSR.CCIS.CD?format=json&per_page=20000`
    * **População total**
        * Código: `SP.POP.TOTL`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/SP.POP.TOTL?format=json&per_page=20000`
    * **PIB per capita (US$ atuais)**
        * Código: `NY.GDP.PCAP.CD`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/NY.GDP.PCAP.CD?format=json&per_page=20000`
    * **Indicador de Desenvolvimento Financeiro (ex: Bank Z-score ou similar, dependendo da interpretação exata de GFDD.OM.02 no contexto do projeto)**
        * Código: `GFDD.OM.02`
        * Endpoint: `http://api.worldbank.org/v2/country/all/indicator/GFDD.OM.02?format=json&per_page=20000`

