@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Canales de Distribución'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_tvtwt
  as select from zta_tvtwt
{
      @Semantics.language: true
  key spras as Spras,
      @ObjectModel.text.element: ['Vtext']
  key vtweg as Vtweg,
      @Semantics.text: true
      vtext as Vtext
}
