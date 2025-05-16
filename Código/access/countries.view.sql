-- DDL para: learned-tube-459813-c5.access.countries
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.access.countries`
AS select
country_id as `Sigla País`, 
cntry_nm as `Nome País`, 
income_level_value as `Nivel de Renda`, 
capital_city as `Capital do País`
from `learned-tube-459813-c5.filtered.info_countries`;