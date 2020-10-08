
import 'dart:async';

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'crimson_localizations_ca.dart';
import 'crimson_localizations_en.dart';
import 'crimson_localizations_es.dart';

/// Callers can lookup localized strings with an instance of CrimsonLocalizations returned
/// by `CrimsonLocalizations.of(context)`.
///
/// Applications need to include `CrimsonLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'l10n/crimson_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: CrimsonLocalizations.localizationsDelegates,
///   supportedLocales: CrimsonLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: 0.16.1
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the CrimsonLocalizations.supportedLocales
/// property.
abstract class CrimsonLocalizations {
  CrimsonLocalizations(String locale) : assert(locale != null), localeName = intl.Intl.canonicalizedLocale(locale.toString());

  // ignore: unused_field
  final String localeName;

  static CrimsonLocalizations of(BuildContext context) {
    return Localizations.of<CrimsonLocalizations>(context, CrimsonLocalizations);
  }

  static const LocalizationsDelegate<CrimsonLocalizations> delegate = _CrimsonLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ca'),
    Locale('en'),
    Locale('es')
  ];

  // NumberValidator.max
  String get numberMax;

  // NumberValidator.min
  String get numberMin;

  // NumberValidator.negative
  String get numberNegative;

  // NumberValidator.positive
  String get numberPositive;

  // NumberValidator.range
  String numberRange(Object min, Object max);

  // NumberValidator.required
  String get numberRequired;

  // Validator<T>.required
  String get required;

  // StringValidator.maxLength
  String stringMaxLength(Object max);

  // StringValidator.minLength
  String stringMinLength(Object min);

  // StringValidator.regularExpression
  String stringRegularExpression(Object expression);

  // StringValidator.required
  String get stringRequired;
}

class _CrimsonLocalizationsDelegate extends LocalizationsDelegate<CrimsonLocalizations> {
  const _CrimsonLocalizationsDelegate();

  @override
  Future<CrimsonLocalizations> load(Locale locale) {
    return SynchronousFuture<CrimsonLocalizations>(_lookupCrimsonLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ca', 'en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_CrimsonLocalizationsDelegate old) => false;
}

CrimsonLocalizations _lookupCrimsonLocalizations(Locale locale) {
  
  
  
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ca': return CrimsonLocalizationsCa();
    case 'en': return CrimsonLocalizationsEn();
    case 'es': return CrimsonLocalizationsEs();
  }

  assert(false, 'CrimsonLocalizations.delegate failed to load unsupported locale "$locale"');
  return null;
}
