-- DDL para: learned-tube-459813-c5.filtered.fixed_broadband_users
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.fixed_broadband_users`
AS select
  ind_id, 
  year, 
  ind_value as fixed_broadband_users_per_hun,  
  ind_name, 
  cntry_id,
  cntry_name as cntry_nm
from `learned-tube-459813-c5.raw.dimen_fixed_broadband_users`
where ind_value is not null
and cntry_id <> "";