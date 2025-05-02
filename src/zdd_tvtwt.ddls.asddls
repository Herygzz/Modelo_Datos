@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Canales de Distribución'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_tvtwt
  as select from zta_tvtwt
{
//      @UI.hidden: true
      //  key spras as Spras,
  key vtweg as Vtweg,
      @Semantics.text: true
      vtext as Vtext
}
where
  spras = $session.system_language
