import 'crimson_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class CrimsonLocalizationsCa extends CrimsonLocalizations {
  CrimsonLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String numberMax(Object max) {
    return 'Introdueix un nombre inferior a $max.';
  }

  @override
  String numberMin(Object min) {
    return 'Introdueix un nombre major de $min.';
  }

  @override
  String get numberNegative => 'Introdueix un nombre negatiu.';

  @override
  String get numberPositive => 'Introdueix un nombre positiu.';

  @override
  String numberRange(Object min, Object max) {
    return 'Introdueix un nombre entre $min i $max.';
  }

  @override
  String get numberRequired => 'Introdueix un número diferent de zero.';

  @override
  String get required => 'El camp és obligatori.';

  @override
  String stringMaxLength(Object max) {
    return 'La llargada del text no pot ser major de $max caràcters.';
  }

  @override
  String stringMinLength(Object min) {
    return 'La llargada del text no pot ser menor de $min caràcters.';
  }

  @override
  String stringRegularExpression(Object expression) {
    return 'El text no segueix l\'expressió regular: $expression';
  }

  @override
  String get stringRequired => 'Introdueix un text.';

  @override
  String get stringMail => 'El text no és un correu electrònic vàlid';

  @override
  String get datetimeRequired => 'Introdueix una data vàlida.';

  @override
  String get boolRequired => 'El valor ha de ser cert o fals.';

  @override
  String get trueRequired => 'El valor ha de ser cert.';

  @override
  String get falseRequired => 'El valor ha de ser fals.';
}
