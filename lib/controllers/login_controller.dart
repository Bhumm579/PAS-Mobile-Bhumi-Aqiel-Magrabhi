import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/login_model.dart';
import '../pesan_helper.dart';
import '../routes.dart';

class LoginController extends GetxController {
  final txtUsername = TextEditingController(text: 'admin123');
  final txtPassword = TextEditingController(text: 'admin123');
  final isLoading = false.obs;

  Future<void> login() async {
    final username = txtUsername.text.trim();
    final password = txtPassword.text.trim();

    if (username.isEmpty || password.isEmpty) {
      tampilkanPeringatan('Login Gagal', 'Username dan password wajib diisi');
      return;
    }

    try {
      isLoading.value = true;
      final response = await http
          .post(
            Uri.parse('https://mediadwi.com/api/latihan/login'),
            body: {'username': username, 'password': password},
          )
          .timeout(const Duration(seconds: 15));

      if (response.statusCode == 200) {
        final hasil = loginModelFromJson(response.body);

        if (hasil.status) {
          Get.offAllNamed(Routes.mainMenu);
        } else {
          tampilkanPeringatan('Login Gagal', hasil.message);
        }
      } else {
        tampilkanPeringatan(
          'Login Gagal',
          'Terjadi kesalahan (${response.statusCode})',
        );
      }
    } catch (e) {
      tampilkanPeringatan('Login Gagal', 'Terjadi kesalahan: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
