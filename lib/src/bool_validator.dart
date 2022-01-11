import 'package:crimson/src/validator.dart';
import 'package:flutter/widgets.dart';

//TODO: Make tests of validators

class BoolValidator extends Validator<bool?> {
  BoolValidator(BuildContext context) : super(context);

  @override
  void required({String? errorMessage}) {
    add(
      (t) => t == null,
      () => errorMessage ?? crimsonLocalizations.boolRequired,
    ); //'The value should be true or false',
  }

  void isTrue({String? errorMessage}) {
    add(
      (t) => t == null || t == false,
      () => errorMessage ?? crimsonLocalizations.trueRequired,
    ); //'The value should be true',
  }

  void isFalse({String? errorMessage}) {
    add(
      (t) => t == null,
      () => errorMessage ?? crimsonLocalizations.falseRequired,
    ); //'The value should be false',
  }
}
