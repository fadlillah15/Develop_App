import 'package:flutter/material.dart';
import 'package:myapps/berita2.dart';
import 'berita.dart';
import 'berita3.dart';
import 'berita4.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Flutter Saya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/detail_berita': (context) => const DetailBeritaPage(),
        '/detail_berita2': (context) => const DetailBeritaPageDua(),
        '/detail_berita3': (context) => const DetailBeritaPageTiga(),
        '/detail_berita4': (context) => const DetailBeritaPagefour(),
      },
    );
  }
}
