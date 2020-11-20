using {training.salesorder as salesorder} from '../schemas/salesorder';
namespace training.views;

define view ProductByClientView as
    
    select from salesorder.TblSalesOrderItem{
        product.ID as ![productId],
        product.name as ![productName],
        product.salesPrice as ![productPrice],
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientName],
        salesOrder.client.familyName as ![clientLastName]
    };