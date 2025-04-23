@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consuption Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_THS_ORDER
  provider contract transactional_query as projection on zi_ths_order
{
        @Consumption.valueHelpDefinition: [{ entity: {name: 'zc_ths_order_VH', element: 'OrderId'}, useForValidation: true}]
    key Orderid,
     @Consumption.valueHelpDefinition: [{ entity: {name: 'zc_ths_customer_VH', element: 'CustomerId'}, useForValidation: true}]
     @ObjectModel.text.element: [ 'CustomerName' ]
    Customer,
    CustomerName,
 
     @Consumption.valueHelpDefinition: [{ entity: {name: 'zc_ths_vender_VH', element: 'VendorId'}, useForValidation: true}]
           @ObjectModel.text.element: [ 'VendorName' ]
    Vendor,
    VendorName,
     @Consumption.valueHelpDefinition: [{ entity: {name: 'zc_ths_company_VH', element: 'CompanyId'}, useForValidation: true}]
           @ObjectModel.text.element: [ 'CompanyName' ]
    Company,
    CompanyName,
    Usnam,
    /* Associations */
    _Itens: redirected to composition child zc_ths_order_it
}
