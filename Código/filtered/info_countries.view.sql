-- DDL para: learned-tube-459813-c5.filtered.info_countries
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.info_countries`
AS select
  country_id, 
  country_name AS cntry_nm,
  income_level_value, 
  capital_city
from `learned-tube-459813-c5.raw.dimen_info_countries`
where income_level_value <> "Aggregates";