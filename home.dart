import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Beranda Aplikasi'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Tampilkan input pencarian atau lakukan tindakan pencarian di sini
              },
            ),
          ],
        ),
        body: Container(
          height: 900,
          width: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://img.freepik.com/free-photo/ombre-blue-curve-light-blue-background-vector_53876-170266.jpg?w=740&t=st=1695266335~exp=1695266935~hmac=31735bb55cf9517c47ed023e2174843b1ce6a06063416f49ccd6abcf1cd740de"), // Ganti dengan path gambar Anda
              fit: BoxFit
                  .fill, // Atur bagaimana gambar akan menutupi latar belakang
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'Berita Terbaru',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //============================================BERITA SATU=========================================
                Card(
                  margin: const EdgeInsets.all(16),
                  elevation: 4,
                  child: ListTile(
                    leading: const Icon(Icons.article),
                    title: const Text('Real Madrid Menang'),
                    subtitle:
                        const Text('Kemenangan Real Madrid atas BARCELONA...'),
                    onTap: () {
                      // Navigasi ke halaman detail berita
                      Navigator.pushNamed(context, '/detail_berita',
                          arguments: 'Judul Berita 1');
                    },
                  ),
                ),
                //============================================BERITA DUA=========================================
                const Card(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.article),
                    title: Text('Nasi Goreng Pak Udin'),
                    subtitle: Text('Nasi Goreng Viral...'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigasi ke halaman yang sudah dibuat sebelumnya
                    Navigator.pushNamed(context, '/detail_berita2',
                        arguments: {});
                  },
                  child: const Text('Baca Selengkapnya'),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 5),
                  child: const Text(
                    'DAFTAR UNTUK MELIHAT BERITA',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //============================================BERITA TIGA=========================================
                const Card(
                  margin:
                      EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),
                  elevation: 4,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.book),
                        title: Text('Masukkan Data Diri'),
                        subtitle: Text('Data Diri Mencakup nam, usia,dan a'),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke halaman yang sudah dibuat sebelumnya
                      Navigator.pushNamed(context, '/detail_berita3',
                          arguments: {});
                    },
                    child: const Text('Klik Disini!'),
                  ),
                ),
                //============================================BERITA EMPAT=========================================
                const Card(
                  margin: EdgeInsets.all(16),
                  elevation: 4,
                  child: ListTile(
                    leading: Icon(Icons.book),
                    title: Text('MASUKKAN FOTO ANDA'),
                    subtitle: Text('Foto yang di upload bebas'),
                  ),
                ),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigasi ke halaman yang sudah ada
                      Navigator.pushNamed(context, '/detail_berita4');
                    },
                    child: const Text('Klik Disini!!'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
