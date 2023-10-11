#ifndef USER_H
#define USER_H

#include <string>
#include <vector>

class User {
private:
    std::string username;
    std::string password;
    static std::vector<User> users;

public:
    User(const std::string& username, const std::string& password);

    static bool SignUp(const std::string& username, const std::string& password);
    static bool LogIn(const std::string& username, const std::string& password);

    // Save user data to a file.
    static void SaveUsers(const std::string& filename);

    // Load user data from a file.
    static void LoadUsers(const std::string& filename);
};

#endif

