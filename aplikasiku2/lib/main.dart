import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
            child: Text('Welcom to Celeste Cafe'),
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
                'SILAHKAN ISI PESANANNYA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
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
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      myControllerSubmitText1.text;
                      myControllerSubmitText2.text;
                      myControllerSubmitText3.text;
                    });
                  },
                  child: const Text('Pesan'),
                ),
              ),
              Text(
                myControllerSubmitText1.text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                myControllerSubmitText2.text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                myControllerSubmitText3.text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
