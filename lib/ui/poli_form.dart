import 'package:flutter/material.dart';
import 'package:klinik_app/model/poli.dart';
import 'package:klinik_app/ui/poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  @override
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tambah Karyawan",
          style:
              TextStyle(color: Colors.black), // Memberikan warna biru pada teks
        ),
        backgroundColor:
            Colors.blue, // Menetapkan warna latar belakang AppBar menjadi biru
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNip(),
              _fieldNama(),
              _fieldTanggal(),
              _fieldNomor(),
              _fieldEmail(),
              _fieldPassword(),
              SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNip() {
    // Menambahkan tipe data Widget pada fungsi _fieldNamaPoli
    return TextField(
      decoration: const InputDecoration(
          labelText: "Nip", prefixIcon: Icon(Icons.assignment_ind)),
      controller: _namaPoliCtrl,
    );
  }

  Widget _fieldNama() {
    // Menambahkan tipe data Widget pada fungsi _fieldNamaPoli
    return TextField(
      decoration: const InputDecoration(
          labelText: "Nama", prefixIcon: Icon(Icons.group)),
      controller: _namaPoliCtrl,
    );
  }

  Widget _fieldTanggal() {
    // Menambahkan tipe data Widget pada fungsi _fieldNamaPoli
    return TextField(
      decoration: const InputDecoration(
          labelText: "Tanggal Lahir", prefixIcon: Icon(Icons.calendar_today)),
      controller: _namaPoliCtrl,
    );
  }

  Widget _fieldNomor() {
    // Menambahkan tipe data Widget pada fungsi _fieldNamaPoli
    return TextField(
      decoration: const InputDecoration(
          labelText: "Nomor Telepon", prefixIcon: Icon(Icons.call)),
      controller: _namaPoliCtrl,
    );
  }

  Widget _fieldEmail() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Email",
        prefixIcon: Icon(Icons.email), // Menambahkan ikon email
      ),
      controller: _namaPoliCtrl,
    );
  }

  Widget _fieldPassword() {
    // Menambahkan tipe data Widget pada fungsi _fieldNamaPoli
    return TextField(
      decoration: const InputDecoration(
          labelText: "Password", prefixIcon: Icon(Icons.lock)),
      controller: _namaPoliCtrl,
    );
  }

  Widget _tombolSimpan() {
    // Menambahkan tipe data Widget pada fungsi _tombolSimpan
    return ElevatedButton(
      onPressed: () {
        Poli poli = Poli(
            namaPoli: _namaPoliCtrl
                .text); // Menghilangkan kata kunci 'new' sebelum 'Poli'
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      child: const Text("Simpan"),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // Memberikan warna biru pada tombol
      ),
    );
  }
}
