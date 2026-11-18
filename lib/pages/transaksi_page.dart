import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_textfield.dart';
import '../components/net_image.dart';
import '../components/rincian_card.dart';
import '../controllers/transaksi_controller.dart';
import '../format.dart';

class TransaksiPage extends StatelessWidget {
  TransaksiPage({super.key});

  final controller = Get.put(TransaksiController());

  @override
  Widget build(BuildContext context) {
    final makanan = controller.makanan;

    return Scaffold(
      appBar: AppBar(title: const Text('Transaksi Pembelian')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          NetImage(url: makanan.gambar, width: double.infinity, height: 180),
          const SizedBox(height: 16),
          Text(
            makanan.nama,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(rupiah(makanan.harga), style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          Text(makanan.deskripsi),
          const SizedBox(height: 24),
          CustomTextField(
            txtController: controller.txtJumlah,
            labelText: 'Jumlah dibeli',
            angka: true,
            onChanged: (_) => controller.sudahBayar.value = false,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: controller.bayar,
            child: const Text('Bayar'),
          ),
          const SizedBox(height: 16),
          Obx(
            () => controller.sudahBayar.value
                ? RincianCard(
                    subtotal: controller.subtotal.value,
                    ppn: controller.ppn.value,
                    total: controller.total.value,
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
