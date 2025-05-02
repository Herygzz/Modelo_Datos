@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sectores'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_tspat
  as select from zta_tspat
{
      //      @UI.hidden: true
      //  key spras as Spras,
  key spart as Spart,
      @Semantics.text: true
      vtext as Vtext
}
where
  spras = $session.system_language
