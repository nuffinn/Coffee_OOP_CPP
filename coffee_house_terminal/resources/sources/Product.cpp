#include "../headers/Product.h"

Product::Product(const std::string& name, double price, int productID)
    : name(name), price(price), productID(productID) {}

std::string Product::GetName() const {
    return name;
}

double Product::GetPrice() const {
    return price;
}

int Product::GetProductID() const {
    return productID;
}

void Product::SetName(const std::string& newName) {
    name = newName;
}

void Product::SetPrice(double newPrice) {
    price = newPrice;
}

void Product::SetProductID(int newProductID) {
    productID = newProductID;
}

