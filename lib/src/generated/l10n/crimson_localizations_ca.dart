import 'crimson_localizations.dart';

/// The translations for Catalan Valencian (`ca`).
class CrimsonLocalizationsCa extends CrimsonLocalizations {
  CrimsonLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get numberMax => 'Escriu un nombre inferior a {max}.';

  @override
  String get numberMin => 'Escriu un nombre major de {min}.';

  @override
  String get numberNegative => 'Escriu un nombre negatiu.';

  @override
  String get numberPositive => 'Escriu un nombre positiu.';

  @override
  String numberRange(Object min, Object max) {
    return 'Escriu un nombre entre $min i $max.';
  }

  @override
  String get numberRequired => 'Escriu un nombre diferent de zero.';

  @override
  String get required => 'El camp és imprescindible.';

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
    return 'El text no segueix l\'expressió regular: \$expression';
  }

  @override
  String get stringRequired => 'Escriu un text.';

  @override
  String get stringMail => 'Escriu un correu electrònic vàlid';

  @override
  String get datetimeRequired => 'Escriu una data vàlida.';
}
