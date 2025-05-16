-- DDL para: learned-tube-459813-c5.filtered.cellphone_users
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.cellphone_users`
AS select
  ind_id, 
  year, 
  ind_value as cellphone_users_per_hun, 
  ind_name, 
  cntry_id,
  cntry_name as cntry_nm
from `learned-tube-459813-c5.raw.dimen_cellphone_users`
where ind_value is not null;