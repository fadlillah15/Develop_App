import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aplikasiku3/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.black,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mengupload Gambar',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: const MyPage(),
    );
  }
}
