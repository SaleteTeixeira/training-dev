using {Base, temporal} from './common';
namespace training.products;

entity TblProducts: Base, temporal{
    name: String(100);
    manufacturer: String(50);
    salesPrice: Decimal;
    basePrice: Decimal;
    quantity: Integer;
}