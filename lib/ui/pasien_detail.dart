import 'package:flutter/material.dart';
import '../model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Pasien")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text("Nomor RM : ${widget.pasien.nomorRm}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Text("Nama : ${widget.pasien.nama}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Text("Tanggal Lahir : ${widget.pasien.tanggalLahir}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Text("Nomor Telepon : ${widget.pasien.nomorTelepon}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Text("Alamat : ${widget.pasien.alamat}",
              style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Hapus"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
