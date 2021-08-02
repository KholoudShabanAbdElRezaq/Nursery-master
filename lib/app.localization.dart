 import 'dart:async';
 import 'dart:convert';
 import 'package:flutter/material.dart';
 import 'package:flutter/services.dart';

 class AppLocalizations
 {

  final Locale locale;


   AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context)
   {
     return Localizations.of<AppLocalizations>(context, AppLocalizations);

  }
  static const LocalizationsDelegate<AppLocalizations> delegate=AppLocalizationsDel();

   Map<String , String> _localizations;
   Future<bool> load() async {

    String JsonString= await rootBundle.loadString("lang/${locale.languageCode}.json");
   Map<String , dynamic> jsonMap=json.decode(JsonString);
    _localizations = jsonMap.map((key, value)
   {
      return MapEntry(key , value.toString());
    });
     return true;
  }
   String Translate(String key)
   {

   return _localizations[key];

 }
 }
 class AppLocalizationsDel extends LocalizationsDelegate<AppLocalizations>
{
  const AppLocalizationsDel();

  @override
   bool isSupported(Locale locale) {
    return ["en" , "ar"].contains(locale.languageCode);
  }

   @override
   Future<AppLocalizations> load(Locale locale)  async{
     AppLocalizations appLocalizations=new AppLocalizations(locale);
    await appLocalizations.load();
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }

}
//
// import 'package:flutter/material.dart';
// import 'package:localize_and_translate/localize_and_translate.dart';
//
// main() async {
//   // if your flutter > 1.7.8 :  ensure flutter activated
//   WidgetsFlutterBinding.ensureInitialized();
//
//   await translator.init(
//     localeDefault: LocalizationDefaultType.device,
//     languagesList: <String>['ar', 'en'],
//     assetsDirectory: 'assets/langs/',
//     apiKeyGoogle: '<Key>', // NOT YET TESTED
//   ); // intialize
//
//   runApp(LocalizedApp(child: MyApp()));
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//       localizationsDelegates: translator.delegates,
//       locale: translator.locale,
//       supportedLocales: translator.locals(),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(),
//       appBar: AppBar(
//         title: Text(translator.translate('appTitle')),
//         // centerTitle: true,
//       ),
//       body: Container(
//         width: double.infinity,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             SizedBox(height: 50),
//             Text(
//               translator.translate('textArea'),
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 35),
//             ),
//             OutlinedButton(
//               onPressed: () {
//                 translator.setNewLanguage(
//                   context,
//                   newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
//                   remember: true,
//                   restart: true,
//                 );
//               },
//               child: Text(translator.translate('buttonTitle')),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }