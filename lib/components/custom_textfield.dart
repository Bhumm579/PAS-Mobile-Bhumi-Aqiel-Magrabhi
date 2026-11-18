import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController txtController;
  final String labelText;
  final bool obscureText;
  final bool angka;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.txtController,
    required this.labelText,
    this.obscureText = false,
    this.angka = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: obscureText,
      keyboardType: angka ? TextInputType.number : null,
      inputFormatters: angka ? [FilteringTextInputFormatter.digitsOnly] : null,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
