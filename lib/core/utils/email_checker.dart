import 'package:email_validator/email_validator.dart';

class EmailChecker {
  static bool isValidEmail(String email) {
    return EmailValidator.validate(email);
  }
}
