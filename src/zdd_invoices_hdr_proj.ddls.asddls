@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projección Cabecera de Facturas'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zdd_invoices_hdr_proj
  provider contract transactional_query
  as projection on zdd_invoices_hdr
{
  key Vbeln,
      Fkart,
      Knumv,
      Fkdat,
      Gjahr,
      @ObjectModel.text.element: ['CCode_Desc']
      Bukrs,
      @Semantics.amount.currencyCode: 'Waerk'
      Netwr,
      @ObjectModel.text.element: ['PName']
      Pagador,
      @ObjectModel.text.element: ['SName']
      Solicitante,
      @ObjectModel.text.element: ['SecDesc']
      Spart,
      Xblnr,
      Zuonr,
      Waerk,
      @ObjectModel.text.element: ['OrgDesc']
      Vkorg,
      @ObjectModel.text.element: ['CD_Desc']
      Vtweg,

      /* Associations */
      _DocItems : redirected to composition child zdd_invoices_items_proj,

      _CaDist.Vtext as CD_Desc    : localized,
      _CaDist,

      _CCode.Butxt  as CCode_Desc : localized,
      _CCode,

      _OrgVta.Vtext as OrgDesc    : localized,
      _OrgVta,

      _Payer.Name1  as PName      : localized,
      _Payer,

      _Solic.Name1  as SName      : localized,
      _Solic,

      _Sector.Vtext as SecDesc    : localized,
      _Sector

}
