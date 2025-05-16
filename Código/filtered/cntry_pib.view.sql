-- DDL para: learned-tube-459813-c5.filtered.cntry_pib
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.cntry_pib`
AS select 
  year, 
  ind_value as pib_value, 
  ind_id, 
  ind_name, 
  cntry_id
from `learned-tube-459813-c5.raw.dimen_cntry_pib`
where ind_value is not null
and cntry_id <> "";