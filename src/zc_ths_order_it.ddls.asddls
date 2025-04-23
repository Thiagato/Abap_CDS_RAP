@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consuption Order Item'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions:true
define view entity zc_ths_order_it
  as projection on zi_ths_order_it
{
    key OrderId,
    key Item,
    @ObjectModel.text.element: [ 'Description' ]
    @Consumption.valueHelpDefinition: [{ entity: {name: 'zc_ths_product_vh', element: 'ProductId'},useForValidation: true }]
    Product,
    Description,
    Value,
    Currency,
    Quantity,
    SalesPrice,
    UnityMeasure,
    /* Associations */
    _Order: redirected to parent ZC_THS_ORDER,
    _Product
}
