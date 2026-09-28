# 🏥 Aplikasi Klinik - Mobile Programming (Flutter)

Aplikasi mobile berbasis Flutter untuk pengelolaan data poli (CRUD Data Poli) di klinik/rumah sakit. Projek ini disusun berdasarkan materi praktikum **Modul Mobile Programming (Pertemuan 2 – 5)**.

---

## 📌 Fitur Utama

- 📋 **Data Poli**: Menampilkan daftar poli (*Poli Anak, Poli Kandungan, Poli Gigi, Poli THT*) dalam bentuk list kartu interaktif.
- ➕ **Tambah Poli**: Form input untuk menambahkan data poli baru.
- 🔍 **Detail Poli**: Menampilkan informasi detail dari poli yang dipilih lengkap dengan aksi Ubah dan Hapus.
- ✏️ **Ubah Poli**: Form untuk memperbarui / mengedit nama poli.
- 🗑️ **Hapus Poli**: Dialog pop-up konfirmasi (**YA** / **Tidak**) sebelum data dihapus.

---

## 📁 Struktur Direktori

```text
klinik_app/
├── lib/
│   ├── model/
│   │   └── poli.dart               # Model data Poli
│   ├── ui/
│   │   ├── poli_page.dart          # Halaman utama daftar data poli
│   │   ├── poli_item.dart          # Widget komponen list item poli
│   │   ├── poli_form.dart          # Form tambah data poli
│   │   ├── poli_detail.dart        # Halaman detail poli & dialog hapus
│   │   └── poli_update_form.dart   # Form ubah data poli
│   └── main.dart                   # Entry point aplikasi Flutter
├── pubspec.yaml                    # Konfigurasi dependensi project
└── README.md                       # Dokumentasi project
```

---

## 🛠️ Teknologi & Tools

- **Framework**: Flutter
- **Bahasa Pemrograman**: Dart
- **Development Environment**: FlutLab.io

---

## 🚀 Cara Menjalankan Projek

### Menggunakan FlutLab (Web):
1. Buka dan import repository ini ke [FlutLab.io](https://flutlab.io).
2. Klik tombol **Build / Run** (ikon Play) untuk menjalankan aplikasi.

---

## 👤 Identitas Mahasiswa

- **Nama**: M.Theodore Hepny Papareng
- **NIM**: 19230215
- **Kelas**: 19.7AF.07
- **Mata Kuliah**: Mobile Programming
