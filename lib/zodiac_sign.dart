// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Data/strings.dart';

class ZodiacSign extends StatelessWidget {
  final String ZodiacName;
  // ignore: non_constant_identifier_names
  final String ZodiacDate;
  // ignore: non_constant_identifier_names
  final String ZodiacImagePath;

  ZodiacSign(
      {required this.ZodiacName,
      // ignore: non_constant_identifier_names
      required this.ZodiacDate,
      required this.ZodiacImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 400,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.pink),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    ZodiacName,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    // ignore: prefer_interpolation_to_compose_strings
                    "lib/resim/" + ZodiacImagePath,
                    width: 120,
                    height: 120,
                  ),
                ),
              ],
            ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    ZodiacDate,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
