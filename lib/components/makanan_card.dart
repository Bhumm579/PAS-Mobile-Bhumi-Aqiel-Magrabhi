import 'package:flutter/material.dart';

import '../format.dart';
import '../models/makanan_model.dart';
import 'net_image.dart';
class MakananCard extends StatelessWidget {
  final Makanan makanan;
  final VoidCallback onTap;

  const MakananCard({super.key, required this.makanan, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: NetImage(url: makanan.gambar, width: 56, height: 56),
        title: Text(makanan.nama),
        subtitle: Text(rupiah(makanan.harga)),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
