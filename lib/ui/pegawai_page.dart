import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_item.dart';
import 'pegawai_form.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({Key? key}) : super(key: key);

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        backgroundColor: Colors.blue, // Background AppBar Biru
        foregroundColor: Colors.white, // Teks & Icon (+) Putih
        actions: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.add),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PegawaiForm()),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PegawaiItem(
            pegawai: Pegawai(
              nip: "123456",
              nama: "Budi Santoso",
              tanggalLahir: "1990-01-01",
              nomorTelepon: "08123456789",
              email: "budi@klinik.com",
              password: "password123",
            ),
          ),
          PegawaiItem(
            pegawai: Pegawai(
              nip: "123457",
              nama: "Siti Rahma",
              tanggalLahir: "1992-05-15",
              nomorTelepon: "08123456780",
              email: "siti@klinik.com",
              password: "password123",
            ),
          ),
        ],
      ),
    );
  }
}
