# Notebook de Extração de Dados do Banco Mundial para o BigQuery (Meli.ipynb)

Este Jupyter Notebook (`Meli.ipynb`) automatiza o processo de extração de dados sobre países e diversos indicadores econômicos e de desenvolvimento da API pública do Banco Mundial. Os dados coletados são então carregados em tabelas no Google BigQuery para análise posterior.

## Visão Geral

O notebook executa as seguintes tarefas principais:

1.  **Coleta de Informações de Países:** Busca uma lista geral de países e suas informações cadastrais (região, nível de renda, capital, etc.).
2.  **Coleta de Dados de Indicadores:** Para uma lista pré-definida de indicadores do Banco Mundial, o notebook busca os dados históricos para todos os países disponíveis.
3.  **Carregamento no Google BigQuery:** Os dados coletados (tanto as informações dos países quanto os dados de cada indicador) são estruturados e carregados em tabelas separadas dentro de um dataset específico no Google BigQuery.

## Funcionalidades Principais

O script Python dentro do notebook é organizado em três funções principais:

1.  `get_world_bank_countries()`:
    * Conecta-se ao endpoint `https://api.worldbank.org/v2/country`.
    * Recupera informações detalhadas sobre os países, como ID, nome, região, nível de renda, tipo de empréstimo, cidade capital, longitude e latitude.
    * Processa a resposta JSON e retorna uma lista de dicionários contendo os dados dos países.

2.  `Workspace_indicator_data(indicator_code, indicator_name_friendly)`:
    * Constrói a URL da API para um `indicator_code` específico (ex: `IT.NET.USER.ZS`).
    * Busca todos os registros disponíveis para o indicador (configurado para `per_page=20000` para tentar obter todos os dados em uma única chamada por indicador).
    * Processa a resposta JSON, extraindo ano, valor do indicador, ID do indicador, nome do indicador, código ISO3 do país e nome do país.
    * Retorna uma lista de dicionários com os dados do indicador, ordenados por ano.
    * Inclui tratamento de erros para timeouts e problemas na requisição.

3.  `save_data_to_bigquery_table(data, table_name, dataset_id, project_id, write_disposition)`:
    * Recebe uma lista de dados (dicionários) e o nome da tabela de destino.
    * Converte os dados para um DataFrame do Pandas.
    * Utiliza a biblioteca `google-cloud-bigquery` para carregar o DataFrame no BigQuery.
    * Parâmetros como `project_id` (`learned-tube-459813-c5`), `dataset_id` (padrão `raw`) e `write_disposition` (padrão `WRITE_TRUNCATE`, que substitui a tabela se ela existir) são configuráveis.
    * Detecta automaticamente o esquema da tabela (`autodetect=True`).

## Fluxo de Execução

Quando o notebook é executado:

1.  Primeiro, a função `get_world_bank_countries()` é chamada para obter os dados cadastrais dos países. Estes dados são salvos na tabela `dimen_info_countries` no BigQuery.
2.  Em seguida, o script itera sobre um dicionário pré-definido `INDICATORS`. Para cada indicador:
    * A função `Workspace_indicator_data()` é chamada para buscar os dados históricos.
    * Se dados forem retornados, a função `save_data_to_bigquery_table()` é chamada para carregar esses dados em uma nova tabela no BigQuery. O nome da tabela é derivado do nome amigável do indicador (ex: `dimen_intrnt_users`).
    * Há uma pausa de 1 segundo (`time.sleep(1)`) entre a coleta de cada indicador para evitar sobrecarregar a API do Banco Mundial.

## Tecnologias Utilizadas

* **Python 3**
* **Bibliotecas Python:**
    * `requests`: Para realizar chamadas HTTP à API do Banco Mundial.
    * `pandas`: Para manipulação e estruturação dos dados em formato tabular antes do carregamento.
    * `google-cloud-bigquery`: Para interagir com o Google BigQuery (carregar dados).
    * `time`: Para introduzir pausas entre as chamadas de API.

## Fontes de Dados e Indicadores Coletados

Os dados são provenientes da API do Banco Mundial (`http://api.worldbank.org/v2/country`).

**Informações Gerais dos Países:**
* Endpoint: `https://api.worldbank.org/v2/country?format=json&per_page=300`
* Tabela no BigQuery: `raw.dimen_info_countries`

**Indicadores Específicos (carregados no dataset `raw` do BigQuery):**

| Nome Amigável (Nome da Tabela) | Código do Indicador | Descrição (Exemplo)                        |
| ------------------------------ | ------------------- | ------------------------------------------ |
| `dimen_intrnt_users`           | `IT.NET.USER.ZS`    | Indivíduos usando a Internet (% da população) |
| `dimen_fixed_broadband_users`  | `IT.NET.BBND.P2`    | Assinaturas de banda larga fixa (por 100p) |
| `dimen_cellphone_users`        | `IT.CEL.SETS.P2`    | Assinaturas de telefonia móvel (por 100p)   |
| `dimen_secure_internet_servers`| `IT.NET.SECR.P6`    | Servidores de Internet seguros (por 1M pop) |
| `dimen_tic_export`             | `BX.GSR.CCIS.CD`    | Exportações de serviços de TIC (US$ atuais) |
| `dimen_cntry_pop`              | `SP.POP.TOTL`       | População total                            |
| `dimen_cntry_pib`              | `NY.GDP.PCAP.CD`    | PIB per capita (US$ atuais)                |
| `dimen_mrkt_stck_rtrn`         | `GFDD.OM.02`        | Indicador de mercado de ações/financeiro    |


## Configuração e Pré-requisitos

1.  **Ambiente Python:** Certifique-se de ter o Python 3 instalado.
2.  **Bibliotecas:** Instale as bibliotecas Python necessárias:
    ```bash
    pip install requests pandas google-cloud-bigquery
    ```
3.  **Autenticação Google Cloud:**
    * Configure a autenticação para o Google Cloud SDK no ambiente onde o notebook será executado. Geralmente, isso é feito via `gcloud auth application-default login` ou configurando a variável de ambiente `GOOGLE_APPLICATION_CREDENTIALS` para apontar para um arquivo JSON de chave de conta de serviço.
    * A conta de serviço ou usuário deve ter permissões para criar/escrever tabelas no dataset especificado no BigQuery (no caso, `raw` no projeto `learned-tube-459813-c5`).
4.  **Projeto e Dataset no BigQuery:**
    * O notebook está configurado para usar o projeto `learned-tube-459813-c5` e o dataset `raw`. Certifique-se de que este projeto existe e que o dataset `raw` foi criado, ou ajuste essas configurações no código se necessário.

