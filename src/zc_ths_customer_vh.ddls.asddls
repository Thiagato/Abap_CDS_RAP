@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Order Costumer'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_ths_customer_VH as select from ztths_costumer
{
        @ObjectModel.text.element: [ 'Name' ]
        @EndUserText.label: 'ID cliente'
    key customer_id as CustomerId,
    
        @Semantics.text: true
        @EndUserText.label: 'Nome Cliente'
    name as Name
}

group by customer_id, name
