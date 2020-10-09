import 'package:flutter/widgets.dart';
import 'package:navy/navy.dart';
import 'generated/l10n/crimson_localizations.dart';

//TODO: Make tests of validators

class Validator<T> {
  final BuildContext context;
  final _validators = List<FunctionOf1<T, FunctionOf0<String>>>();

  Validator(this.context);

  void add(PredicateOf1<T> isNotValid, FunctionOf0<String> error) {
    _validators.add((T t) => isNotValid(t) ? error : null);
  }

  FunctionOf1<T, String> get value {
    return (T t) {
      String result;
      for (var isValid in _validators) {
        var partialResult = isValid(t);
        if (partialResult != null) {
          if (result == null) {
            result = partialResult();
            continue;
          }
          result = "$result\n$partialResult";
        }
      }
      return result;
    };
  }

  void required() {
    add(
      (t) => t == null,
      () => CrimsonLocalizations.of(context).required,
    ); // 'Please enter some text');
  }
}
