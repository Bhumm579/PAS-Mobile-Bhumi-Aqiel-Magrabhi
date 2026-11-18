import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/makanan_model.dart';
import '../pesan_helper.dart';

class TransaksiController extends GetxController {
  final Makanan makanan = Get.arguments['makanan'];
  final txtJumlah = TextEditingController(text: '1');

  final sudahBayar = false.obs;
  final subtotal = 0.0.obs;
  final ppn = 0.0.obs;
  final total = 0.0.obs;

  void bayar() {
    final jumlah = int.tryParse(txtJumlah.text.trim());

    if (jumlah == null || jumlah < 1) {
      tampilkanPeringatan('Jumlah tidak valid', 'Jumlah makanan minimal 1.');
      return;
    }

    subtotal.value = makanan.harga * jumlah;
    ppn.value = subtotal.value * 0.05;
    total.value = subtotal.value + ppn.value;
    sudahBayar.value = true;
  }
}
