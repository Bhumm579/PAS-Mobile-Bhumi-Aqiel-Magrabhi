import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_textfield.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              txtController: controller.txtUsername,
              labelText: 'Username',
            ),
            const SizedBox(height: 12),
            CustomTextField(
              txtController: controller.txtPassword,
              labelText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Obx(
              () => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : ElevatedButton(
                      onPressed: controller.login,
                      child: const Text('Login'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
