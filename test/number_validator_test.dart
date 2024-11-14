import 'package:crimson/crimson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crimson/src/number_validator.dart';

void main() {
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  Future<NumberValidator> getValidator(WidgetTester tester) async {
    late BuildContext newcontext;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (BuildContext ctx) {
            newcontext = ctx;
            return Container();
          },
        ),
      ),
    );
    return NumberValidator(newcontext);
  }

  testWidgets('required validator should return error if number is null or zero',
      (WidgetTester tester) async {
    var validator = await getValidator(tester);
    validator.required(errorMessage: 'Number is required');
    expect(validator.validate(null), 'Number is required');
    expect(validator.validate(0), 'Number is required');
    expect(validator.validate(1), null);
  });

  testWidgets('required validator should return error if number is null or zero',
      (WidgetTester tester) async {
    var validator = await getValidator(tester);
    validator.required(errorMessage: 'Number is required');
    expect(validator.validate(null), 'Number is required');
    expect(validator.validate(0), 'Number is required');
    expect(validator.validate(1), null);
  });

  testWidgets('positive validator should return error if number is negative',
      (WidgetTester tester) async {
    var validator = await getValidator(tester);
    validator.positive(errorMessage: 'Number must be positive');
    expect(validator.validate(-1), 'Number must be positive');
    expect(validator.validate(0), null);
    expect(validator.validate(1), null);
  });

  testWidgets('negative validator should return error if number is positive',
      (WidgetTester tester) async {
    var validator = await getValidator(tester);
    validator.negative(errorMessage: 'Number must be negative');
    expect(validator.validate(1), 'Number must be negative');
    expect(validator.validate(0), null);
    expect(validator.validate(-1), null);
  });

  testWidgets('max validator should return error if number is greater than max',
      (WidgetTester tester) async {
    var validator = await getValidator(tester);
    validator.max(10, errorMessage: 'Number must be less than or equal to 10');
    expect(validator.validate(11), 'Number must be less than or equal to 10');
    expect(validator.validate(10), null);
    expect(validator.validate(9), null);
  });

  testWidgets('min validator should return error if number is less than min',
      (WidgetTester tester) async {
    var validator = await getValidator(tester);
    validator.min(5, errorMessage: 'Number must be greater than or equal to 5');
    expect(validator.validate(4), 'Number must be greater than or equal to 5');
    expect(validator.validate(5), null);
    expect(validator.validate(6), null);
  });

  testWidgets('range validator should return error if number is not in range',
      (WidgetTester tester) async {
    var validator = await getValidator(tester);
    validator.range(5, 10, errorMessage: 'Number must be between 5 and 10');
    expect(validator.validate(4), 'Number must be between 5 and 10');
    expect(validator.validate(11), 'Number must be between 5 and 10');
    expect(validator.validate(5), null);
    expect(validator.validate(10), null);
    expect(validator.validate(7), null);
  });
}
