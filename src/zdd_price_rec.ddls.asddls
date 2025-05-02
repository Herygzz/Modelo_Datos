@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Condiciones de Precios'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_price_rec
  as select from zta_price_rec
{
  key knumv as Knumv,
  key kposn as Kposn,
  key stunr as Stunr,
      kschl as Kschl,
      kawrt as Kawrt,
      kbetr as Kbetr,
      waers as Waers,
      kkurs as Kkurs,
      kvsl1 as Kvsl1,
      mwsk1 as Mwsk1,
      kwert as Kwert,
      waerk as Waerk
}
