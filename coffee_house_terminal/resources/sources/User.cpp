#include "../headers/User.h"
#include <string>
#include <fstream>
#include <iostream>
#include <sstream>

std::vector<User> User::users;

User::User(const std::string& username, const std::string& password) : username(username), password(password) {}

bool User::SignUp(const std::string& username, const std::string& password) {
    for (const User& user : users) {
        if (user.username == username) {
            return false;
        }
    }

    User newUser(username, password);
    users.push_back(newUser);
    return true;
}

bool User::LogIn(const std::string& username, const std::string& password) {
    for (const User& user : users) {
        if (user.username == username && user.password == password) {
            return true;
        }
    }
    return false;
}

void User::SaveUsers(const std::string& filename) {
    std::ofstream file(filename);
    if (file.is_open()) {
        for (const User& user : users) {
            file << user.username << "," << user.password << "\n";
        }
        file.close();
    }
}

void User::LoadUsers(const std::string& filename) {
    std::ifstream file(filename);
    if (file.is_open()) {
        users.clear(); // Clear existing users before loading from the file.
        std::string line;

        while (std::getline(file, line)) {
            bool readingUsername = true;
            std::string username, password;

            for (char c : line) {
                if (c == ',') {
                    readingUsername = false;  // Switch to reading the password when a comma is encountered
                } else if (readingUsername) {
                    username += c;  // Append character to the username
                } else {
                    password += c;  // Append character to the password
                }
            }
            username.erase(0, username.find_first_not_of(" \t\n\r\f\v"));
            username.erase(username.find_last_not_of(" \t\n\r\f\v") + 1);
            password.erase(0, password.find_first_not_of(" \t\n\r\f\v"));
            password.erase(password.find_last_not_of(" \t\n\r\f\v") + 1);
            users.emplace_back(username, password);
        }
        file.close();
    }
}

