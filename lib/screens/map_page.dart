import 'package:example_map/screens/select_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Map",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: LocaleText(
              "welcome",
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),
          ),
          Center(
            child: LocaleText(
              "language",
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),
          ),
          Center(
              child: LocaleText("balance",
                  style: TextStyle(fontSize: 30, color: Colors.purple))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Center(
          child: Center(child: Icon(Icons.arrow_back_ios)),
        ),
      ),
    );
  }
}
