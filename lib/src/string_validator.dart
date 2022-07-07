import 'package:crimson/src/validator.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/widgets.dart';

//TODO: Make tests of validators

class StringValidator extends Validator<String?> {
  StringValidator(BuildContext context) : super(context);

  @override
  void required({String? errorMessage}) {
    add(
      (t) => t == null || t.isEmpty,
      () => errorMessage ?? crimsonLocalizations.stringRequired,
    ); //'Please enter some text');
  }

  void maxLength(int max, {String? errorMessage}) {
    add(
      (t) => t != null && t.length > max,
      () => errorMessage ?? crimsonLocalizations.stringMaxLength(max),
    ); // 'Max length cannot be greater than $max');
  }

  void minLength(int min, {String? errorMessage}) {
    add(
      (t) => t != null && t.length < min,
      () => errorMessage ?? crimsonLocalizations.stringMinLength(min),
    ); // 'Minimum length cannot be lower than $min');
  }

  void regularExpression(String expression,
      {bool caseSensitive = false, bool multiLine = false, String? errorMessage}) {
    var regExp = RegExp(
      expression,
      caseSensitive: caseSensitive,
      multiLine: multiLine,
    );
    add(
      (t) => t != null && !regExp.hasMatch(t),
      () => errorMessage ?? crimsonLocalizations.stringRegularExpression(expression),
    ); //'Is not matching the regular expression: $expression',
  }

  void mail({String? errorMessage}) {
    add(
      (t) => t != null && !EmailValidator.validate(t),
      () => errorMessage ?? crimsonLocalizations.stringMail,
    ); //"Please enter a valid email"
  }
}
