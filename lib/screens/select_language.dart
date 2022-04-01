import 'package:example_map/screens/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select Language",
          style: TextStyle(
            fontSize: 30,
            color: Colors.purple,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Dastur Tilini talnlang",
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ),
          ),
          TextButton(
            onPressed: () => Locales.change(context, "en"),
            child: const Center(
                child: Text(
              "English",
              style: TextStyle(fontSize: 25),
            )),
          ),
          TextButton(
            onPressed: () => Locales.change(context, "uz"),
            child: const Center(
              child: Text(
                "Uzbek",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (__) => MapPage()));
        },
        child: Center(child: Icon(Icons.check_outlined ),
      ), ),
    );
  }
}
