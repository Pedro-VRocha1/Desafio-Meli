-- DDL para: learned-tube-459813-c5.filtered.intrnt_users
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.intrnt_users`
AS select
  ind_id, 
  year, 
  ind_value as intrnt_users_p, 
  (100 - ind_value) as intrnt_not_users_p, 
  ind_name, 
  cntry_id, 
  cntry_name
from `learned-tube-459813-c5.raw.dimen_intrnt_users`
where ind_value is not null;