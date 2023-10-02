import 'dart:ui';

import 'package:aplikasiku2/Halaman/halaman_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class halaman_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 37, 61),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/images1.jpg'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 3.0,
                    sigmaY: 3.0,
                  ),
                  child: Center(
                    child: Text('Terima Kasih Atas Pesanannya',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.croissantOne(
                          fontSize: 50,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return halaman_2();
                    }));
                  },
                  child: const Text('Pesan Lagi ?')),
              ElevatedButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text('Keluar'))
            ],
          ),
        ),
      ),
    );
  }
}
