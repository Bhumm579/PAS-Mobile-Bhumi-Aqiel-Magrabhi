import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/makanan_card.dart';
import '../models/makanan_model.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Makanan')),
      body: ListView.builder(
        itemCount: daftarMakanan.length,
        itemBuilder: (context, index) {
          final makanan = daftarMakanan[index];

          return MakananCard(
            makanan: makanan,
            onTap: () =>
                Get.toNamed(Routes.transaksi, arguments: {'makanan': makanan}),
          );
        },
      ),
    );
  }
}
