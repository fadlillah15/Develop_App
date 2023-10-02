import 'package:flutter/material.dart';
import './Halaman/halaman_1.dart';

void main() {
  runApp(ApkSaya());
}

class ApkSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: halaman_1(),
    );
  }
}
