


import 'crimson_localizations.dart';

/// The translations for English (`en`).
class CrimsonLocalizationsEn extends CrimsonLocalizations {
  CrimsonLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get numberMax => 'Please enter a number lower than {max}';

  @override
  String get numberMin => 'Please enter a number greater than {min}.';

  @override
  String get numberNegative => 'Please enter a negative number';

  @override
  String get numberPositive => 'Please enter a positive number';

  @override
  String numberRange(Object min, Object max) {
    return 'Please enter a number between $min and $max.';
  }

  @override
  String get numberRequired => 'Please enter some number different than zero';

  @override
  String get required => 'Please enter some text';

  @override
  String stringMaxLength(Object max) {
    return 'Max length cannot be greater than $max';
  }

  @override
  String stringMinLength(Object min) {
    return 'Minimum length cannot be lower than \$min';
  }

  @override
  String stringRegularExpression(Object expression) {
    return 'Is not matching the regular expression: \$expression';
  }

  @override
  String get stringRequired => 'Please enter some text';

  @override
  String get stringMail => 'Please enter a valid email';

  @override
  String get datetimeRequired => 'Please enter a valid date.';

  @override
  String get boolRequired => 'The value should be true or false.';

  @override
  String get trueRequired => 'The value should be true.';

  @override
  String get falseRequired => 'The value should be false.';
}
