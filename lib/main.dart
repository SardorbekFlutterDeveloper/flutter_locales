import 'package:example_map/screens/map_page.dart';
import 'package:example_map/screens/select_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Locales.init(["en", "uz"]);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocaleBuilder(
      
      builder: (locale) => MaterialApp(
        debugShowCheckedModeBanner: false,
          localizationsDelegates: Locales.delegates,
          supportedLocales: Locales.supportedLocales,
        locale: locale,
          title: 'Material App',
          home: const Scaffold(
            body: SelectLanguage()
          ),
        ),
      
    );
  }
}
