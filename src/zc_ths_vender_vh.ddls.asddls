@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Vendor'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_THS_VENDER_VH as select from ztths_vendor
{

      @ObjectModel.text.element: [ 'Name' ]
      @EndUserText.label: 'ID Vendedor'
  key vendor_id as VendorId,
      @Semantics.text: true
      @EndUserText.label: 'Nome Vendedor'
      name      as Name
}
group by
  vendor_id,
  name
