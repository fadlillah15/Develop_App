import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DetailBeritaPagefour extends StatefulWidget {
  const DetailBeritaPagefour({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DetailBeritaPagefourState createState() => _DetailBeritaPagefourState();
}

class _DetailBeritaPagefourState extends State<DetailBeritaPagefour> {
  String? imagePath; // Variabel untuk menyimpan path gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masukkan Foto'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Take Your Picture',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                // ignore: deprecated_member_use
                final pickedImage = await ImagePicker().getImage(
                  source:
                      ImageSource.camera, // Untuk mengambil gambar dari kamera
                  // Untuk mengambil gambar dari galeri, gantilah dengan ImageSource.gallery
                );

                if (pickedImage != null) {
                  setState(() {
                    imagePath =
                        pickedImage.path; // Menyimpan path gambar yang dipilih
                  });
                }
              },
              child: const Text('Ambil Gambar'),
            ),
          ),
          if (imagePath != null && imagePath!.isNotEmpty)
            Image.file(
              File(imagePath!), // Menggunakan path gambar yang telah disimpan
              width: 200,
              height: 200,
            ),
        ],
      ),
    );
  }
}
