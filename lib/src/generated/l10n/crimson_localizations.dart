import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'crimson_localizations_ca.dart';
import 'crimson_localizations_en.dart';
import 'crimson_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of CrimsonLocalizations
/// returned by `CrimsonLocalizations.of(context)`.
///
/// Applications need to include `CrimsonLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
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
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
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
  CrimsonLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static CrimsonLocalizations? of(BuildContext context) {
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

  /// NumberValidator.max
  ///
  /// In en, this message translates to:
  /// **'Please enter a number lower than {max}'**
  String numberMax(Object max);

  /// NumberValidator.min
  ///
  /// In en, this message translates to:
  /// **'Please enter a number greater than {min}.'**
  String numberMin(Object min);

  /// NumberValidator.negative
  ///
  /// In en, this message translates to:
  /// **'Please enter a negative number'**
  String get numberNegative;

  /// NumberValidator.positive
  ///
  /// In en, this message translates to:
  /// **'Please enter a positive number'**
  String get numberPositive;

  /// NumberValidator.range
  ///
  /// In en, this message translates to:
  /// **'Please enter a number between {min} and {max}.'**
  String numberRange(Object min, Object max);

  /// NumberValidator.required
  ///
  /// In en, this message translates to:
  /// **'Please enter some number different than zero'**
  String get numberRequired;

  /// Validator<T>.required
  ///
  /// In en, this message translates to:
  /// **'Please enter some text'**
  String get required;

  /// StringValidator.maxLength
  ///
  /// In en, this message translates to:
  /// **'Max length cannot be greater than {max}'**
  String stringMaxLength(Object max);

  /// StringValidator.minLength
  ///
  /// In en, this message translates to:
  /// **'Minimum length cannot be lower than \$min'**
  String stringMinLength(Object min);

  /// StringValidator.regularExpression
  ///
  /// In en, this message translates to:
  /// **'Is not matching the regular expression: \$expression'**
  String stringRegularExpression(Object expression);

  /// StringValidator.required
  ///
  /// In en, this message translates to:
  /// **'Please enter some text'**
  String get stringRequired;

  /// StringValidator.mail
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get stringMail;

  /// DateTimeValidator.required
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid date.'**
  String get datetimeRequired;

  /// BoolValidator.required
  ///
  /// In en, this message translates to:
  /// **'The value should be true or false.'**
  String get boolRequired;

  /// BoolValidator.trueRequired
  ///
  /// In en, this message translates to:
  /// **'The value should be true.'**
  String get trueRequired;

  /// BoolValidator.falseRequired
  ///
  /// In en, this message translates to:
  /// **'The value should be false.'**
  String get falseRequired;
}

class _CrimsonLocalizationsDelegate extends LocalizationsDelegate<CrimsonLocalizations> {
  const _CrimsonLocalizationsDelegate();

  @override
  Future<CrimsonLocalizations> load(Locale locale) {
    return SynchronousFuture<CrimsonLocalizations>(lookupCrimsonLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ca', 'en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_CrimsonLocalizationsDelegate old) => false;
}

CrimsonLocalizations lookupCrimsonLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ca': return CrimsonLocalizationsCa();
    case 'en': return CrimsonLocalizationsEn();
    case 'es': return CrimsonLocalizationsEs();
  }

  throw FlutterError(
    'CrimsonLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
