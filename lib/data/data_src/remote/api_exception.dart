/// Custom exception for API-related errors
/// Used to standardize error handling across the application
class ApiException implements Exception {
  final String? msg;

  ApiException({this.msg});

  @override
  String toString() => msg ?? 'An unknown error occurred';
}
