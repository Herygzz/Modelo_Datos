@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes de Ventas'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_ctes_vtas
  as select from zta_ctes_vtas
{
  key kunnr as Kunnr,
      name1 as Name1,
      name2 as Name2,
      ort01 as Ort01,
      pstlz as Pstlz,
      regio as Regio,
      sortl as Sortl,
      stras as Stras,
      telf1 as Telf1,
      name3 as Name3,
      name4 as Name4,
      ort02 as Ort02,
      stcd1 as Stcd1
}
