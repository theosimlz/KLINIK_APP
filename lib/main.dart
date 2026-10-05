import 'package:flutter/material.dart';
import 'ui/pegawai_page.dart'; // ganti ke 'ui/pasien_page.dart' jika ingin membuka data Pasien

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const PegawaiPage(), // atau const PasienPage()
    );
  }
}
