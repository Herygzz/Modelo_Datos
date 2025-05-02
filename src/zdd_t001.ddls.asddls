@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sociedades'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_t001
  as select from zta_t001
{
  key bukrs as Bukrs,
      butxt as Butxt,
      ort01 as Ort01,
      land1 as Land1,
      waers as Waers
}
