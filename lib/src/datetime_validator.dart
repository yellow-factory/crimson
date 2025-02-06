import 'package:crimson/src/validator.dart';

//TODO: Make tests of validators

class DateTimeValidator extends Validator<DateTime?> {
  DateTimeValidator(super.context);

  @override
  void required({String? errorMessage}) {
    add(
      (t) => t == null,
      () => errorMessage ?? crimsonLocalizations.datetimeRequired,
    ); //'Please enter some number different than zero',
  }
}
