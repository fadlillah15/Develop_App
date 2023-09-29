import 'package:flutter/material.dart';

class DetailBeritaPageTiga extends StatefulWidget {
  const DetailBeritaPageTiga({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _DetailBeritaPageTigaState createState() => _DetailBeritaPageTigaState();
}

class _DetailBeritaPageTigaState extends State<DetailBeritaPageTiga> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _usiaController = TextEditingController();
  final List<String> _savedTextList = [];
  String _savedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Diri'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextFormField(
            controller: _namaController,
            decoration: const InputDecoration(
              hintText: 'Masukkan Nama Anda',
              border: UnderlineInputBorder(),
            ),
            maxLines: 1,
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _usiaController,
            decoration: const InputDecoration(
              hintText: 'Usia',
              border: UnderlineInputBorder(),
            ),
            maxLines: 1,
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _alamatController,
            decoration: const InputDecoration(
              hintText: 'Alamat',
              border: UnderlineInputBorder(),
            ),
            maxLines: 1,
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Saat tombol "Simpan" diklik, tambahkan teks ke dalam list
                setState(() {
                  String savedText =
                      'Nama: ${_namaController.text} \nUsia: ${_usiaController.text} \nAlamat: ${_alamatController.text} \n';
                  _savedTextList.add(savedText);
                  _savedText = _savedTextList
                      .join('\n'); // Gabungkan teks dengan pemisah baris
                });
              },
              child: const Text('Simpan'),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: Text(
              'Hasil:\n$_savedText', // Menampilkan teks yang disimpan dengan pemisahan baris
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Pastikan untuk membersihkan controller setelah digunakan
    _namaController.dispose();
    _usiaController.dispose();
    _alamatController.dispose();
    super.dispose();
  }
}
