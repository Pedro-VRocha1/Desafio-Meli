-- DDL para: learned-tube-459813-c5.filtered.mrkt_stck_rtrn
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.mrkt_stck_rtrn`
AS select
  ind_id, 
  year, 
  ind_value as mrkt_stck_rtrn_p,
  ind_name, 
  cntry_id, 
  cntry_name
from `learned-tube-459813-c5.raw.dimen_mrkt_stck_rtrn`
where ind_value is not null
and cntry_id <> "";