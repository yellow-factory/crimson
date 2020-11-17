import 'package:crimson/src/validator.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/widgets.dart';
import 'generated/l10n/crimson_localizations.dart';

//TODO: Make tests of validators

class StringValidator extends Validator<String> {
  StringValidator(BuildContext context) : super(context);

  @override
  void required() {
    add(
      (t) => t == null || t.isEmpty,
      () => CrimsonLocalizations.of(context).stringRequired,
    ); //'Please enter some text');
  }

  void maxLength(int max) {
    add(
      (t) => t != null && t.length > max,
      () => CrimsonLocalizations.of(context).stringMaxLength(max),
    ); // 'Max length cannot be greater than $max');
  }

  void minLength(int min) {
    add(
      (t) => t != null && t.length > min,
      () => CrimsonLocalizations.of(context).stringMinLength(min),
    ); // 'Minimum length cannot be lower than $min');
  }

  void regularExpression(String expression, {bool caseSensitive: false, bool multiLine: false}) {
    var regExp = new RegExp(
      expression,
      caseSensitive: caseSensitive,
      multiLine: multiLine,
    );
    add(
      (t) => !regExp.hasMatch(t),
      () => CrimsonLocalizations.of(context).stringRegularExpression(expression),
    ); //'Is not matching the regular expression: $expression',
  }

  void mail() {
    add(
      (t) => EmailValidator.validate(t),
      () => CrimsonLocalizations.of(context).stringMail,
    ); //"Please enter a valid email"
  }
}
