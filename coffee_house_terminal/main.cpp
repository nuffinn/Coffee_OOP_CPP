#include <iostream>
#include <limits>  // Include this header for std::numeric_limits
#include "resources/headers/Product.h"
#include "resources/headers/User.h"
#include "resources/headers/ProductDatabase.h"

int main() {
    std::string filename = "users.txt"; // File to store user data
    User::LoadUsers(filename); // Load existing user data from the file

    while (true) {
        std::cout << "Choose an option:" << std::endl;
        std::cout << "1. Login" << std::endl;
        std::cout << "2. Sign up" << std::endl;
        std::cout << "3. Exit" << std::endl;

        int choice;
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        switch (choice) {
            case 1:
                {
                    std::string username, password;
                    std::cout << "Enter username: ";
                    std::cin >> username;
                    std::cout << "Enter password: ";
                    std::cin >> password;

                    if (User::LogIn(username, password)) {
                        std::cout << "Login successful. Welcome, " << username << "!" << std::endl;

                        // Create a product database for the logged-in user
                        ProductDatabase productDB("products.txt");

                        while (true) {
                            std::cout << "\nProduct Management Menu:" << std::endl;
                            std::cout << "1. Add a product" << std::endl;
                            std::cout << "2. Edit a product by productID" << std::endl;
                            std::cout << "3. Delete a product by productID" << std::endl;
                            std::cout << "4. Find a product by productID" << std::endl;
                            std::cout << "5. Show all products" << std::endl;
                            std::cout << "6. Log out" << std::endl;

                            int productChoice;
                            std::cout << "Enter your choice: ";
                            std::cin >> productChoice;

                            switch (productChoice) {
                                case 1:
                                    {
                                        std::string name;
                                        double price;
                                        int productID;

                                        std::cout << "Enter product name: ";
                                        std::cin.ignore();
                                        std::getline(std::cin, name);

                                        std::cout << "Enter product price: ";
                                        std::cin >> price;

                                        std::cout << "Enter product ID: ";
                                        std::cin >> productID;

                                        Product newProduct(name, price, productID);

                                        // Add the new product to the product database.
                                        productDB.AddProduct(newProduct);
                                        std::cout << "Product added successfully!" << std::endl;
                                    }
                                    break;

                                case 2:
                                    {
                                        // Code to edit a product
                                        // int productID = getProductIDFromUser(); // Implement a function to get the productID
                                        // Product updatedProduct = createProduct(); // Implement a function to get updated product details
                                        // productDB.EditProduct(productID, updatedProduct);
                                    }
                                    break;

                                case 3:
                                    {
                                        // Code to delete a product
                                        // int productID = getProductIDFromUser(); // Implement a function to get the productID
                                        // productDB.DeleteProduct(productID);
                                    }
                                    break;

                                case 4:
                                    {
                                        // Code to find a product
                                        // int productID = getProductIDFromUser(); // Implement a function to get the productID
                                        // Product foundProduct = productDB.FindProduct(productID);
                                        // displayProduct(foundProduct); // Implement a function to display product details
                                    }
                                    break;

                                case 5:
                                    productDB.ShowProducts(); // Show all products
                                    break;

                                case 6:
                                    std::cout << "Logging out." << std::endl;
                                    break;

                                default:
                                    std::cout << "Invalid product management choice. Please enter a valid option." << std::endl;
                            }

                            if (productChoice == 6) {
                                break; // Exit the product management menu and return to the main menu
                            }
                        }
                    } else {
                        std::cout << "Login failed. Invalid username or password." << std::endl;
                    }
                }
                break;

            case 2:
                {
                    std::string username, password;
                    std::cout << "Enter a new username: ";
                    std::cin >> username;
                    std::cout << "Enter a password: ";
                    std::cin >> password;

                    if (User::SignUp(username, password)) {
                        std::cout << "Sign-up successful. User " << username << " created." << std::endl;
                        User::SaveUsers(filename); // Save the updated user data to the file
                    } else {
                        std::cout << "Username already exists. Please choose a different one." << std::endl;
                    }
                }
                break;

            case 3:
                std::cout << "Exiting the program." << std::endl;
                return 0;

            default:
                std::cout << "Invalid choice. Please enter 1, 2, or 3." << std::endl;
        }

        // Clear the input buffer to handle invalid input.
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    return 0;
}
