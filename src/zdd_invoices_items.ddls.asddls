@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posiciones de Facturas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_invoices_items
  as select from zdd_vbrp
  association        to parent zdd_invoices_hdr as _Header on $projection.Vbeln = _Header.Vbeln
  association [1..*] to zdd_t001w               as _Plant  on $projection.Werks = _Plant.Werks

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
      @ObjectModel.text.association: '_Plant'
      Werks,
      Prctr,
      SocCo,
      Hdr_Waerk,
      /* Associations */
      _InvHdr,
      _Plant,
      
      //      Asociación Padre
      _Header
}
