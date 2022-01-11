import 'package:crimson/src/validator.dart';
import 'package:flutter/widgets.dart';

//TODO: Make tests of validators

class DateTimeValidator extends Validator<DateTime?> {
  DateTimeValidator(BuildContext context) : super(context);

  @override
  void required({String? errorMessage}) {
    add(
      (t) => t == null,
      () => errorMessage ?? crimsonLocalizations.datetimeRequired,
    ); //'Please enter some number different than zero',
  }
}
