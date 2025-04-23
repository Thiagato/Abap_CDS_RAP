@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Product'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_ths_product_VH
  as select from zr_ths_product
{
      @ObjectModel.text.element: [ 'Description' ]
      @EndUserText.label: 'Id Produto'
  key ProductId,

      @Semantics.text: true
      @EndUserText.label: 'Descrição Produto'
      Description
}
group by
  ProductId,
  Description
