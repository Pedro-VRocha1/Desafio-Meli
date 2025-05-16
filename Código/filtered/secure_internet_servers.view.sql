-- DDL para: learned-tube-459813-c5.filtered.secure_internet_servers
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.filtered.secure_internet_servers`
AS select
  ind_id, 
  year, 
  ind_value as secure_internet_servers_per_mll,
  ind_name, 
  cntry_id, 
  cntry_name as cntry_nm
from `learned-tube-459813-c5.raw.dimen_secure_internet_servers`
where ind_value is not null
and cntry_id <> "";