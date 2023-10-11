#include "headers/ProductDatabase.h"
#include "headers/Product.h" // Include the Product class header

ProductDatabase::ProductDatabase(const std::string& filename) : filename(filename) {
    LoadProducts();
}

// Add a new product to the database.
void AddProduct(const Product& product) {
    products.push_back(product);
}

// Edit an existing product in the database by productID.
void EditProduct(int productID, const std::string& newName, double newPrice) {
    for (Product& product : products) {
        if (product.GetProductID() == productID) {
            product.SetName(newName);
            product.SetPrice(newPrice);
            break;
        }
    }
}

// Delete a product from the database by productID.
void DeleteProduct(int productID) {
    products.erase(
        std::remove_if(products.begin(), products.end(),
                       [productID](const Product& product) { return product.GetProductID() == productID; }),
        products.end());
}

// Store the products in a file.
void SaveProducts() {
    std::ofstream file(filename);
    if (file.is_open()) {
        for (const Product& product : products) {
            file << product.GetProductID() << "," << product.GetName() << "," << product.GetPrice() << "\n";
        }
        file.close();
    }
}

// Load products from the file.
void LoadProducts() {
    std::ifstream file(filename);
    if (file.is_open()) {
        products.clear(); // Clear existing products before loading from file.
        int productID;
        std::string name;
        double price;
        char comma;
        while (file >> productID >> comma >> std::ws && std::getline(file, name, ',') && file >> price) {
            AddProduct(Product(name, price, productID));
        }
        file.close();
    }
}

// Display all products.
void ShowProducts() {
    for (const Product& product : products) {
        std::cout << "Product ID: " << product.GetProductID() << ", Name: " << product.GetName()
                  << ", Price: $" << product.GetPrice() << std::endl;
    }
}

