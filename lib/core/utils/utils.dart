import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  /// Handles authentication flow based on token existence
  ///
  /// Redirects to home page if token exists, login page otherwise
  static Future<void> manipulateLogin(context) async {
    var token = await getToken();
    if (token != null) {
      context.pushNamed('home');
    } else {
      context.pushNamed('login');
    }
  }

  /// Retrieves the authentication token from local storage
  ///
  /// Returns null if no token exists
  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  /// Saves authentication token to local storage
  ///
  /// [token] The token string to save
  static Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
}
