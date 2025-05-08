@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Centros'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_t001w
  as select from zta_t001w
{
       @Semantics.language: true
  key  $session.system_language as Spras,
       @ObjectModel.text.element: ['Name']
  key  werks                    as Werks,
       @Semantics.text: true
       name1                    as Name,
       stras                    as Stras,
       pstlz                    as Pstlz,
       ort01                    as Ort01
}
