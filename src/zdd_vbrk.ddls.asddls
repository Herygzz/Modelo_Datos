@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cabecera de Facturas'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_vbrk
  as select from zta_vbrk
{
  key vbeln as Vbeln,
      fkart as Fkart,
      knumv as Knumv,
      fkdat as Fkdat,
      gjahr as Gjahr,
      bukrs as Bukrs,
      @Semantics.amount.currencyCode: 'waerk'
      netwr as Netwr,
      kunrg as Pagador,
      kunag as Solicitante,
      spart as Spart,
      xblnr as Xblnr,
      zuonr as Zuonr,
      waerk as Waerk,
      vkorg as Vkorg,
      vtweg as Vtweg
}
