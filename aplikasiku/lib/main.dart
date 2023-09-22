import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Kelas Software E.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Kelas Software Engineering",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 450,
              height: 230,
              color: Colors.blue,
              child: Image.asset(
                'images/images.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Belajar Dart Dan Flutter Bersama Kak Falaq :)',
              style: TextStyle(
                fontSize: 19,
                height: 2.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'images/images2.jpg',
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'images/images3.jpg',
                    width: 200,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Text(
              'Selamat Belajar, Semoga Sukses ;) ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
