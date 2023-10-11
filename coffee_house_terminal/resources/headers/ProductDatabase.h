#ifndef PRODUCTDATABASE_H
#define PRODUCTDATABASE_H

#include <vector>
#include <string>
#include "Product.h" // Include the Product class header

class ProductDatabase {
private:
    std::vector<Product> products;
    std::string filename;

public:
    ProductDatabase(const std::string& filename);

    void AddProduct(const Product& product);
    void EditProduct(int productID, const std::string& newName, double newPrice);
    void DeleteProduct(int productID);
    void SaveProducts();
    void LoadProducts();
    void ShowProducts();
};

#endif

