import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({Key? key}) : super(key: key);

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
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
                MaterialPageRoute(builder: (context) => const PasienForm()),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
            pasien: Pasien(
              nomorRm: "RM-001",
              nama: "Ahmad Dahlan",
              tanggalLahir: "1985-04-12",
              nomorTelepon: "08129876543",
              alamat: "Jl. Merdeka No. 10, Jakarta",
            ),
          ),
          PasienItem(
            pasien: Pasien(
              nomorRm: "RM-002",
              nama: "Dewi Sartika",
              tanggalLahir: "1995-11-20",
              nomorTelepon: "08129876544",
              alamat: "Jl. Sudirman No. 25, Bandung",
            ),
          ),
        ],
      ),
    );
  }
}
