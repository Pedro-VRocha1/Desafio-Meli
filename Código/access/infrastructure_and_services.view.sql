-- DDL para: learned-tube-459813-c5.access.infrastructure_and_services
-- Tipo: VIEW

CREATE VIEW `learned-tube-459813-c5.access.infrastructure_and_services`
AS select
  sis.cntry_id as `Sigla País`, 
  sis.cntry_nm as `Nome País`,
  sis.year as `Ano`,
  sis.secure_internet_servers_per_mll as `Servidores de Internet Seguros 1M`,
  tic.tic_export as `Valor de serviços de TI`,


from `learned-tube-459813-c5.filtered.secure_internet_servers` as sis
inner join `learned-tube-459813-c5.filtered.tic_export` as tic on
sis.year = tic.year
and sis.cntry_id = tic.cntry_id;