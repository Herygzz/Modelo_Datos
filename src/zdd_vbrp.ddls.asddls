@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posiciones de Facturas'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_vbrp
  as select from zta_vbrp
  association [1..1] to zdd_vbrk as _InvHdr on $projection.Vbeln = _InvHdr.Vbeln
{
  key vbeln         as Vbeln,
      posnr         as Posnr,
      @Semantics.quantity.unitOfMeasure: 'UMPeso'
      fklmg         as Cantidad,
      gewei         as UMPeso,
      @Semantics.amount.currencyCode: 'Hdr_Waerk'
      netwr         as Netwr,
      matnr         as Matnr,
      arktx         as Arktx,
      werks         as Werks,
      prctr         as Prctr,
      kokrs         as SocCo,
      _InvHdr.Waerk as Hdr_Waerk,
      _InvHdr
}
