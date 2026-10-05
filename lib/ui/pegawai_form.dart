import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key}) : super(key: key);

  @override
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipCtrl = TextEditingController();
  final _namaCtrl = TextEditingController();
  final _tanggalLahirCtrl = TextEditingController();
  final _nomorTeleponCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Pegawai"),
        backgroundColor: Colors.blue, // Background AppBar Biru
        foregroundColor: Colors.white, // Teks & Tombol Back Putih
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _fieldNip(),
                const SizedBox(height: 10),
                _fieldNama(),
                const SizedBox(height: 10),
                _fieldTanggalLahir(),
                const SizedBox(height: 10),
                _fieldNomorTelepon(),
                const SizedBox(height: 10),
                _fieldEmail(),
                const SizedBox(height: 10),
                _fieldPassword(),
                const SizedBox(height: 20),
                _tombolSimpan(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _fieldNip() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIP"),
      controller: _nipCtrl,
    );
  }

  Widget _fieldNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaCtrl,
    );
  }

  Widget _fieldTanggalLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tanggal Lahir"),
      controller: _tanggalLahirCtrl,
    );
  }

  Widget _fieldNomorTelepon() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor Telepon"),
      controller: _nomorTeleponCtrl,
    );
  }

  Widget _fieldEmail() {
    return TextField(
      decoration: const InputDecoration(labelText: "Email"),
      controller: _emailCtrl,
    );
  }

  Widget _fieldPassword() {
    return TextField(
      obscureText: true,
      decoration: const InputDecoration(labelText: "Password"),
      controller: _passwordCtrl,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Pegawai pegawai = Pegawai(
          nip: _nipCtrl.text,
          nama: _namaCtrl.text,
          tanggalLahir: _tanggalLahirCtrl.text,
          nomorTelepon: _nomorTeleponCtrl.text,
          email: _emailCtrl.text,
          password: _passwordCtrl.text,
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiDetail(pegawai: pegawai),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Warna Tombol Biru
        foregroundColor: Colors.white, // Warna Teks Putih
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              4), // Bentuk Kotak (sedikit rounded) atau BorderRadius.zero
        ),
      ),
      child: const Text("Simpan"),
    );
  }
}
