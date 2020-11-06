import 'package:crimson/src/validator.dart';
import 'package:flutter/widgets.dart';
import 'generated/l10n/crimson_localizations.dart';

//TODO: Make tests of validators

class NumberValidator extends Validator<num> {
  NumberValidator(BuildContext context) : super(context);

  @override
  void required() {
    add(
      (t) => t == null || t == 0,
      () => CrimsonLocalizations.of(context).numberRequired,
    ); //'Please enter some number different than zero',
  }

  void positive() {
    add(
      (t) => t == null || t < 0,
      () => CrimsonLocalizations.of(context).numberPositive,
    ); //'Please enter a positive number',
  }

  void negative() {
    add(
      (t) => t == null || t > 0,
      () => CrimsonLocalizations.of(context).numberNegative,
    ); //'Please enter a negative number',
  }

  void max(int max) {
    add(
      (t) => t != null && t > max,
      () => CrimsonLocalizations.of(context).numberMax,
    ); //'Please enter a number lower than $max',
  }

  void min(int min) {
    add(
      (t) => t != null && t < min,
      () => CrimsonLocalizations.of(context).numberMin,
    ); //'Please enter a number greater than $min'
  }

  void range(int min, int max) {
    add(
      (t) => t != null && t > min && t < max,
      () => CrimsonLocalizations.of(context).numberRange(min, max),
    ); //'Please enter a number between $min and $max'
  }
}
