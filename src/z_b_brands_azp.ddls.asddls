@AbapCatalog.sqlViewName: 'ZV_BRANDS_AZP'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view Z_B_BRANDS_azp
  as select from zrent_brands_azp
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen
}
