import 'package:flutter/material.dart';

import '../format.dart';
class RincianCard extends StatelessWidget {
  final double subtotal;
  final double ppn;
  final double total;

  const RincianCard({
    super.key,
    required this.subtotal,
    required this.ppn,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _baris('Subtotal', rupiah(subtotal)),
            _baris('PPN 5%', rupiah(ppn)),
            const Divider(),
            _baris('Total Bayar', rupiah(total), tebal: true),
          ],
        ),
      ),
    );
  }

  Widget _baris(String label, String nilai, {bool tebal = false}) {
    final gaya = TextStyle(
      fontWeight: tebal ? FontWeight.bold : FontWeight.normal,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: gaya),
          Text(nilai, style: gaya),
        ],
      ),
    );
  }
}
