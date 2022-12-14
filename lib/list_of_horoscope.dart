import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope/Data/strings.dart';
import 'package:horoscope/model/horoscope.dart';
import 'package:horoscope/zodiac_sign.dart';

class listOfHoroscope extends StatelessWidget {
  late List<Horoscope> allHoroscopes;

  listOfHoroscope() {
    allHoroscopes = getReadyToData();
    print(allHoroscopes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of Horoscope"),
      ),
      body: ListView(children: [
        ZodiacSign(
            ZodiacName: allHoroscopes[1].horoscopeName,
            ZodiacDate: allHoroscopes[1].horoscopeDate,
            ZodiacImagePath: allHoroscopes[1].horoscopeLittleImg)
      ]),
    );
  }

  List<Horoscope> getReadyToData() {
    List<Horoscope> gecici = [];
    for (int i = 0; i < 12; i++) {
      Horoscope eklenecekburc = Horoscope(
          "${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png",
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          "${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png",
          Strings.BURC_ADLARI[i]);
      gecici.add(eklenecekburc);
    }

    return gecici;
  }
}
