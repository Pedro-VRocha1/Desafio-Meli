-- DDL para: learned-tube-459813-c5.access.economic_growth
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.access.economic_growth`
AS select
  intrnt.cntry_id as `Sigla País`, 
  intrnt.cntry_name as `Nome País`,
  intrnt.year as `Ano`, 
  intrnt.intrnt_users_p as `Pessoas com Internet %`, 
  intrnt.intrnt_not_users_p as `Pessoas sem Internet %`,
  pib.pib_value as `PIB per capita`,
  msr.mrkt_stck_rtrn_p as `Crescimento do mercado`

from `learned-tube-459813-c5.filtered.intrnt_users` as intrnt
inner join `learned-tube-459813-c5.filtered.cntry_pib` as pib on
intrnt.year = pib.year
and intrnt.cntry_id = pib.cntry_id
inner join `learned-tube-459813-c5.filtered.mrkt_stck_rtrn` as msr on
intrnt.year = msr.year
and intrnt.cntry_id = msr.cntry_id;