
import 'package:flutter/material.dart';
import 'package:nursery/Screens/auth/wrapper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

 import 'app.localization.dart';

void main() {
  runApp(MaterialApp(
      // title:  AppLocalizations.of(context).Translate("second_string"),
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale("en", "US"),
        Locale("ar", "EG"),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocale) {
        for (var supportedLocale in supportedLocale) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }

        return supportedLocale.first;
      },
      home: Wrapper() ,
  ));
}
