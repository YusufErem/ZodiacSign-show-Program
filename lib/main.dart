import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_of_horoscope.dart';

void main(List<String> args) {
  runApp(HoroscopeApp());
}

class HoroscopeApp extends StatelessWidget {
  const HoroscopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: listOfHoroscope(),
    );
  }
}
