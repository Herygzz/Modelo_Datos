@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cabecera de Facturas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zdd_invoices_hdr
  as select from zdd_vbrk
  composition [1..*] of zdd_invoices_items as _DocItems

  // Aunque la cardinalidad de las asosiaciones es [1..1] se tienen que poner de [1..*] debido
  // al idioma, una misma clave puede tener 1 o mas descripciones en diferentes idiomas
  association [1..*] to zdd_t001           as _CCode  on $projection.Bukrs = _CCode.Bukrs
  association [1..*] to zdd_ctes_vtas      as _Payer  on $projection.Pagador = _Payer.Kunnr
  association [1..*] to zdd_ctes_vtas      as _Solic  on $projection.Solicitante = _Solic.Kunnr
  association [1..*] to zdd_tspat          as _Sector on $projection.Spart = _Sector.Spart
  association [1..*] to zdd_tvk0t          as _OrgVta on $projection.Vkorg = _OrgVta.Vkorg
  association [1..*] to zdd_tvtwt          as _CaDist on $projection.Vtweg = _CaDist.Vtweg
{
  key Vbeln,
      Fkart,
      Knumv,
      Fkdat,
      Gjahr,
      @ObjectModel.text.association: '_CCode'
      Bukrs,
      @Semantics.amount.currencyCode: 'Waerk'
      Netwr,
      @ObjectModel.text.association: '_Payer'
      Pagador,
      @ObjectModel.text.association: '_Solic'
      Solicitante,
      @ObjectModel.text.association: '_Sector'
      Spart,
      Xblnr,
      Zuonr,
      Waerk,
      @ObjectModel.text.association: '_OrgVta'
      Vkorg,
      @ObjectModel.text.association: '_CaDist'
      Vtweg,
      _CCode,
      _Payer,
      _Solic,
      _Sector,
      _OrgVta,
      _CaDist,
      //      Composición
      _DocItems
}
