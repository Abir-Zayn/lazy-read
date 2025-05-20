extension FieldValidation on String{
  /// Validates if the string is a valid email format
  ///
  /// Returns true if valid, false otherwise
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(this);
  }

  /// Validates if the string is a valid password format
  ///
  /// Returns true if valid, false otherwise
  bool isValidPassword() {
    final RegExp passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$',
    );
    return passwordRegex.hasMatch(this);
  }
}