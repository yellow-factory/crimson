# Crimson

A new Flutter package project.

## Localization

To generate the files needed for Localization:

````
flutter gen-l10n --arb-dir=l10n --template-arb-file=intl_en.arb --output-localization-file=crimson_localizations.dart --output-class=CrimsonLocalizations --no-synthetic-package --output-dir=lib/src/generated/l10n
````

The file must be imported in the project that uses crimson:

````
    ...
    import 'package:flutter_gen/gen_l10n/app_localizations.dart';
    import 'package:crimson/l10n/generated/crimson_localizations.dart';

    ...
    return MaterialApp(
      localizationsDelegates: [
        ...AppLocalizations.localizationsDelegates, //Localization file of the App
        NaplesLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales, //Localization file of the App
    );
    ...
    
````
