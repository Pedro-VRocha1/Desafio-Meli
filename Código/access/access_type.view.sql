-- DDL para: learned-tube-459813-c5.access.access_type
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.access.access_type`
AS select
  fbu.cntry_id as `Sigla País`, 
  fbu.cntry_nm as `Nome País`,
  fbu.year as `Ano`,
  round(fbu.fixed_broadband_users_per_hun) as `Assinaturas de Banda Fixa por 100`,
  round(cell.cellphone_users_per_hun) as `Assinaturas de Celular por 100`
from `learned-tube-459813-c5.filtered.fixed_broadband_users` as fbu
inner join `learned-tube-459813-c5.filtered.cellphone_users` as cell on
fbu.year = cell.year
and fbu.cntry_id = cell.cntry_id;