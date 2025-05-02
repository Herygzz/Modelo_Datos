@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Centros'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_t001w
  as select from zta_t001w
{
  key werks as Werks,
      name1 as Name1,
      name2 as Name2,
      stras as Stras,
      pstlz as Pstlz,
      ort01 as Ort01
}
