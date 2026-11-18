import 'package:flutter/material.dart';
class NetImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final BoxFit fit;

  const NetImage({
    super.key,
    required this.url,
    required this.width,
    required this.height,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) return _ikon();

    return Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, error, stackTrace) => _ikon(),
    );
  }

  Widget _ikon() {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade200,
      child: const Icon(Icons.image_not_supported, color: Colors.grey),
    );
  }
}
