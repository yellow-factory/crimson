import 'package:crimson/src/validator.dart';
import 'package:flutter/widgets.dart';

//TODO: Make tests of validators

class NumberValidator extends Validator<num?> {
  NumberValidator(BuildContext context) : super(context);

  @override
  void required() {
    add(
      (t) => t == null || t == 0,
      () => crimsonLocalizations.numberRequired,
    ); //'Please enter some number different than zero',
  }

  void positive() {
    add(
      (t) => t == null || t < 0,
      () => crimsonLocalizations.numberPositive,
    ); //'Please enter a positive number',
  }

  void negative() {
    add(
      (t) => t == null || t > 0,
      () => crimsonLocalizations.numberNegative,
    ); //'Please enter a negative number',
  }

  void max(int max) {
    add(
      (t) => t != null && t > max,
      () => crimsonLocalizations.numberMax,
    ); //'Please enter a number lower than $max',
  }

  void min(int min) {
    add(
      (t) => t != null && t < min,
      () => crimsonLocalizations.numberMin,
    ); //'Please enter a number greater than $min'
  }

  void range(int min, int max) {
    add(
      (t) => t != null && t > min && t < max,
      () => crimsonLocalizations.numberRange(min, max),
    ); //'Please enter a number between $min and $max'
  }
}
