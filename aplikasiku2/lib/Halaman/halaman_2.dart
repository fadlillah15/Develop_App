import 'package:aplikasiku2/Halaman/halaman_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './halaman_1.dart';

class halaman_2 extends StatefulWidget {
  @override
  State<halaman_2> createState() => _MyAppState();
}

class _MyAppState extends State<halaman_2> {
  final TextEditingController myControllerSubmitText1 = TextEditingController();
  final TextEditingController myControllerSubmitText2 = TextEditingController();
  final TextEditingController myControllerSubmitText3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 37, 61),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 8, 37, 61),
          title: Center(
            child: Text(
              'Welcom to Celeste Cafe',
              style: GoogleFonts.croissantOne(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        // Supaya bisa di scroll
        body: SingleChildScrollView(
          child: Column(
            // Memasangkan sebuah gambar
            children: <Widget>[
              Container(
                child: Image.asset(
                  'images/images1.jpg',
                ),
              ),
              Text(
                'SILAHKAN MASUKAN PESANAN ANDA',
                textAlign: TextAlign.center,
                style: GoogleFonts.anekGujarati(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              // Kolom ke 1 untuk makanan
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: myControllerSubmitText1,
                  style: TextStyle(color: Colors.white),
                  // Fitur
                  autocorrect: false,
                  // Dekorasi
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: 'Makanan',
                    hintText: 'Masukan Nama Pesanan',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Kolom ke 2 untuk minuman
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: myControllerSubmitText2,
                  style: TextStyle(color: Colors.white),
                  // Fitur
                  autocorrect: false,
                  // Dekorasi
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: 'Minuman',
                    hintText: 'Masukan Nama Pesanan',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Kolom ke 3 untuk nomor meja
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: myControllerSubmitText3,
                  style: TextStyle(color: Colors.white),
                  autocorrect: false,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(15),
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: 'Nomor Meja',
                    hintText: 'Masukan Nomor Meja',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Tombol Input Kolem 1, 2, 3,
              Padding(
                padding: const EdgeInsets.all(3),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'PESANAN ANDA',
                            style:
                                GoogleFonts.anekGujarati(color: Colors.white),
                          ),
                          content: Text(
                            '\n'
                            '${myControllerSubmitText1.text}\n'
                            '${myControllerSubmitText2.text}\n'
                            '${myControllerSubmitText3.text}',
                            textAlign: TextAlign.center,
                            style:
                                GoogleFonts.anekGujarati(color: Colors.white),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                print('Cliked');
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return halaman_3();
                                }));
                              },
                              child: Text(
                                'Oke',
                                style: GoogleFonts.anekGujarati(
                                    color: Colors.white),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                print('Cliked');
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cencel',
                                style: GoogleFonts.anekGujarati(
                                    color: Colors.white),
                              ),
                            )
                          ],
                          backgroundColor: Color.fromARGB(255, 8, 37, 61),
                        );
                      },
                    );
                  },
                  child: const Text('PESAN'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return halaman_1();
                    }));
                  },
                  child: const Text('KEMBALI'))
            ],
          ),
        ),
      ),
    );
  }
}
