@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sectores'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_tspat
  as select from zta_tspat
{
      @Semantics.language: true
  key spras as Spras,
      @ObjectModel.text.element: ['Vtext']
  key spart as Spart,
      @Semantics.text: true
      vtext as Vtext
}
