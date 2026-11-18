import 'package:flutter/material.dart';
class InfoTile extends StatelessWidget {
  final IconData ikon;
  final String label;
  final String isi;

  const InfoTile({
    super.key,
    required this.ikon,
    required this.label,
    required this.isi,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ikon, color: Theme.of(context).colorScheme.primary),
      title: Text(
        label,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
      subtitle: Text(isi, style: const TextStyle(fontSize: 15)),
    );
  }
}
