import 'package:crimson/src/validator.dart';

class NumberValidator extends Validator<num?> {
  NumberValidator(super.context);

  @override
  void required({String? errorMessage}) {
    add(
      (t) => t == null || t == 0,
      () => errorMessage ?? crimsonLocalizations.numberRequired,
    ); //'Please enter some number different than zero',
  }

  void positive({String? errorMessage}) {
    add(
      (t) => t == null || t < 0,
      () => errorMessage ?? crimsonLocalizations.numberPositive,
    ); //'Please enter a positive number',
  }

  void negative({String? errorMessage}) {
    add(
      (t) => t == null || t > 0,
      () => errorMessage ?? crimsonLocalizations.numberNegative,
    ); //'Please enter a negative number',
  }

  void max(num max, {String? errorMessage}) {
    add(
      (t) => t != null && t > max,
      () => errorMessage ?? crimsonLocalizations.numberMax(max),
    ); //'Please enter a number lower than $max',
  }

  void min(num min, {String? errorMessage}) {
    add(
      (t) => t != null && t < min,
      () => errorMessage ?? crimsonLocalizations.numberMin(min),
    ); //'Please enter a number greater than $min'
  }

  void range(num min, num max, {String? errorMessage}) {
    add(
      (t) => t != null && (t < min || t > max),
      () => errorMessage ?? crimsonLocalizations.numberRange(min, max),
    ); //'Please enter a number between $min and $max'
  }
}
