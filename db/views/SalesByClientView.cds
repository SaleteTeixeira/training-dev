using {training.salesorder as salesorder} from '../schemas/salesorder';
namespace training.views;

define view SalesByClientView as

    select from salesorder.TblSalesOrderItem {
        salesOrder.client.ID as ![clientId],
        salesOrder.client.name as ![clientName],
        salesOrder.client.familyName as ![clientLastName],
        sum(product.quantity * product.salesPrice) as ![clientSales]
    } group by salesOrder.client.ID, salesOrder.client.name, salesOrder.client.familyName;