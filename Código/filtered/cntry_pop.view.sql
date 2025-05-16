-- DDL para: learned-tube-459813-c5.filtered.cntry_pop
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.cntry_pop`
AS select 
  year, 
  ind_id, 
  ind_value as pop_nbr, 
  ind_name, 
  cntry_id
from `learned-tube-459813-c5.raw.dimen_cntry_pop`
where ind_value is not null
and cntry_id <> "";