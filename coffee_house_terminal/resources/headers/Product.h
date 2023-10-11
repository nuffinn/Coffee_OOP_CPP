#ifndef PRODUCT_H
#define PRODUCT_H

#include <string>

class Product {
private:
    std::string name;
    double price;
    int productID;

public:
    Product(const std::string& name, double price, int productID);
    std::string GetName() const;
    double GetPrice() const;
    int GetProductID() const;
    void SetName(const std::string& newName);
    void SetPrice(double newPrice);
    void SetProductID(int newProductID);
};

#endif

