import 'package:crimson/src/validator.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/widgets.dart';

//TODO: Make tests of validators

class StringValidator extends Validator<String?> {
  StringValidator(BuildContext context) : super(context);

  @override
  void required() {
    add(
      (t) => t == null || t.isEmpty,
      () => crimsonLocalizations.stringRequired,
    ); //'Please enter some text');
  }

  void maxLength(int max) {
    add(
      (t) => t != null && t.length > max,
      () => crimsonLocalizations.stringMaxLength(max),
    ); // 'Max length cannot be greater than $max');
  }

  void minLength(int min) {
    add(
      (t) => t != null && t.length > min,
      () => crimsonLocalizations.stringMinLength(min),
    ); // 'Minimum length cannot be lower than $min');
  }

  void regularExpression(String expression, {bool caseSensitive: false, bool multiLine: false}) {
    var regExp = new RegExp(
      expression,
      caseSensitive: caseSensitive,
      multiLine: multiLine,
    );
    add(
      (t) => t != null && !regExp.hasMatch(t),
      () => crimsonLocalizations.stringRegularExpression(expression),
    ); //'Is not matching the regular expression: $expression',
  }

  void mail() {
    add(
      (t) => t != null && !EmailValidator.validate(t),
      () => crimsonLocalizations.stringMail,
    ); //"Please enter a valid email"
  }
}
