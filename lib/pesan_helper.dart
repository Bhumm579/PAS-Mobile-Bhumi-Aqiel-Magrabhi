import 'package:flutter/material.dart';
import 'package:get/get.dart';

void tampilkanPeringatan(String judul, String pesan) {
  Get.dialog(
    AlertDialog(
      title: Text(judul),
      content: Text(pesan),
      actions: [
        TextButton(onPressed: () => Get.back(), child: const Text('OK')),
      ],
    ),
  );
}
