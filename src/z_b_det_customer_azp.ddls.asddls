@AbapCatalog.sqlViewName: 'ZV_DET_CUST_AZP'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.allowExtensions: true
define view Z_B_DET_CUSTOMER_azp
  as select from zrent_custom_azp
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
