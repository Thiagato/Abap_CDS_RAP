@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS basic order'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zr_ths_order as select from ztths_order
{
    key orderid as Orderid,
    customer as Customer,
    vendor as Vendor,
    company as Company,
    usnam as Usnam
}
