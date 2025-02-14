# Crimson

A new Flutter package project.

## Localization

To generate the files needed for Localization:

````
flutter gen-l10n
````
This command uses the params defined in l10n.yaml

The file must be imported in the project that uses crimson:

````
    ...
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
