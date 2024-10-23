import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan MaterialApp sebagai aplikasi utama
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wisata Gunung di Batu'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget titleSection yang berisi struktur Row dan Column untuk title
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32 untuk seluruh Row
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Column di-align ke awal baris
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // padding 8 untuk teks pertama
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // warna abu-abu untuk teks kedua
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red, // ikon bintang berwarna merah
          ),
          const Text('41'),
        ],
      ),
    );

    return ListView(
      children: [
        titleSection, // mengganti body dengan titleSection
      ],
    );
  }
}
