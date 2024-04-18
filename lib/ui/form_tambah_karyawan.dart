import 'package:flutter/material.dart';
import '../model/poli.dart'; // Pastikan file model/poli.dart sudah ada dan berisi definisi kelas Poli
import 'poli_detail.dart'; // Pastikan file poli_detail.dart sudah ada dan berisi definisi kelas PoliDetail

class PoliItem extends StatelessWidget {
  final Poli poli;

  const PoliItem({Key? key, required this.poli}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${poli.namaPoli}"),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
    );
  }
}
