#include <iostream>
#include <limits>  // Include this header for std::numeric_limits
#include "resources/headers/User.h"

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
                User::SaveUsers(filename); // Save user data before exiting
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

