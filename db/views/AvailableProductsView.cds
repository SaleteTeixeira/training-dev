using {training.products as products} from '../schemas/products';
namespace training.views;

define view AvailableProductsView as 

    select from products.TblProducts as p where p.validFrom <= now() and p.validTo >= now();
    