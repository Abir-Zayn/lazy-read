/// Contains all API endpoint paths used in the application
/// These paths are appended to the base URL for complete request URLs
class ApiEndpointUrls {
  ApiEndpointUrls._();

  /// User authentication endpoints
  static const String login = 'users/login/';
  static const String signup = 'users/register/';
  static const String getUser = 'users/profile/';
  static const String logout = 'users/logout/';
}
