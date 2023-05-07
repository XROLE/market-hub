import 'package:flutter/material.dart';

class ProductVariant extends StatelessWidget {
  final String imageUrl;
  final Color variantColor;
  const ProductVariant({required this.imageUrl, required this.variantColor, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(4),
      height: size.width * .15,
      width: size.width * .15,
      decoration: BoxDecoration(
          image:
               DecorationImage(image: AssetImage(imageUrl)),
          color: variantColor,
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
