/* Abbreviated with SRP,
 this principle states (very intuitively) that a class should only have a single reason to change.
 In other words, you should create classes with a single “responsibility” so that they’re easier to maintain and harder to break*/
class UserManager {
  bool authenticate(String username, String password) {
    return true;
  }

  void updateUserProfile(String username, Map<String, dynamic> profile) {
    print("Updating user profile for user: $username");
    print("New profile: $profile");
  }
}

class AuthManager {
  bool authenticate(String username, String password) {
    return true;
  }
}

class ProfileManager {
  void updateUserProfile(String username, Map<String, dynamic> profile) {
    print("Updating user profile for user: $username");
    print("New profile: $profile");
  }
}
