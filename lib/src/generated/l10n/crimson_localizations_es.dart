import 'crimson_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class CrimsonLocalizationsEs extends CrimsonLocalizations {
  CrimsonLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String numberMax(Object max) {
    return 'Introduce un número inferior a $max';
  }

  @override
  String numberMin(Object min) {
    return 'Introduce un número superior a $min.';
  }

  @override
  String get numberNegative => 'Introduce un número negativo.';

  @override
  String get numberPositive => 'Introduce un número positivo.';

  @override
  String numberRange(Object min, Object max) {
    return 'Introduce un número entre $min i $max.';
  }

  @override
  String get numberRequired => 'Introduce un número diferente de cero.';

  @override
  String get required => 'El campo es obligatorio.';

  @override
  String stringMaxLength(Object max) {
    return 'El texto no puede tener más de $max carácteres.';
  }

  @override
  String stringMinLength(Object min) {
    return 'El texto no puede tener menos de $min carácteres.';
  }

  @override
  String stringRegularExpression(Object expression) {
    return 'El texto no cumple con la expresión regular $expression.';
  }

  @override
  String get stringRequired => 'Introduce un texto.';

  @override
  String get stringMail => 'No es un correo electrónico válido';

  @override
  String get datetimeRequired => 'Introduce una fecha válida.';

  @override
  String get boolRequired => 'El valor debe ser cierto o falso.';

  @override
  String get trueRequired => 'El valor debe ser cierto.';

  @override
  String get falseRequired => 'El valor debe ser falso.';
}
