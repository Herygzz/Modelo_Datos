@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projección Posiciones de Facturas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_invoices_items_proj
  as projection on zdd_invoices_items
{
  key Vbeln,
      Posnr,
      @Semantics.quantity.unitOfMeasure: 'UMPeso'
      Cantidad,
      UMPeso,
      @Semantics.amount.currencyCode: 'Hdr_Waerk'
      Netwr,
      Matnr,
      Arktx,
      @ObjectModel.text.element: ['WrkName']
      Werks,
      Prctr,
      SocCo,
      Hdr_Waerk,
      /* Associations */
      _Header : redirected to parent zdd_invoices_hdr_proj,
      _InvHdr,

      _plant.Name as WrkName : localized,
      _Plant
}
