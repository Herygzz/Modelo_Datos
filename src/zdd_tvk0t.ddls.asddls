@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Organizaciones d e Ventas'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_tvk0t
  as select from zta_tvk0t
{
      @Semantics.language: true
  key spras as Spras,
      @ObjectModel.text.element: ['Vtext']
  key vkorg as Vkorg,
      @Semantics.text: true
      vtext as Vtext
}
