-- DDL para: learned-tube-459813-c5.access.internet_users
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.access.internet_users`
AS select
  intrnt.cntry_id as `Sigla País`, 
  intrnt.cntry_name as `Nome País`,
  intrnt.year as `Ano`, 
  intrnt.intrnt_users_p as `Pessoas com Internet %`, 
  intrnt.intrnt_not_users_p as `Pessoas sem Internet %`, 
  round(((intrnt.intrnt_users_p/100) * pop_nbr)) as `Pessoas com Internet`, 
  round(((intrnt.intrnt_not_users_p/100) * pop_nbr)) as `Pessoas sem Internet`
from `learned-tube-459813-c5.filtered.intrnt_users` as intrnt
inner join `learned-tube-459813-c5.filtered.cntry_pop` as pop on
intrnt.year = pop.year
and intrnt.cntry_id = pop.cntry_id;