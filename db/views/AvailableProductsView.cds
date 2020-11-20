using {training.products as products} from '../schemas/products';
namespace training.views;

define view AvailableProductsView as 

    select from products.TblProducts as prod where prod.validFrom <= now() and prod.validTo >= now();
    