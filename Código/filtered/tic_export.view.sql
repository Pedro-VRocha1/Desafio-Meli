-- DDL para: learned-tube-459813-c5.filtered.tic_export
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.tic_export`
AS select
  ind_id, 
  year, 
  ind_value as tic_export,
  ind_name, 
  cntry_id, 
  cntry_name as cntry_nm
from `learned-tube-459813-c5.raw.dimen_tic_export`
where ind_value is not null
and cntry_id <> "";