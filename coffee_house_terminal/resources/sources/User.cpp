#include "headers/User.h"
#include <fstream>

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
        std::string username, password;
        char comma;
        while (file >> username >> comma >> std::ws && std::getline(file, password)) {
            users.emplace_back(username, password);
        }
        file.close();
    }
}

