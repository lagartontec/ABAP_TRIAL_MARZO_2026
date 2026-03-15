@AbapCatalog.sqlViewName: 'ZV_REM_DAYS_AZP'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
define view Z_B_REM_DAYS_azp
  as select from zrent_cars_azp
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta)
      end       as Dias
}
