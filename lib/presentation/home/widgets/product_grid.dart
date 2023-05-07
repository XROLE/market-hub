import 'package:flutter/material.dart';
import 'package:market_hub/presentation/widgets/product_card.dart';

class ProductGrid extends StatelessWidget {
  final List<String> images = [
    'assets/img/shirt1.png',
    'assets/img/shirt2.png',
    'assets/img/shirt3.png',
    'assets/img/shirt4.png',
    'assets/img/shirt5.png',
    'assets/img/shirt6.png',
    'assets/img/shirt7.png',
    'assets/img/shirt8.png',
    'assets/img/shirt9.png',
    'assets/img/shirt10.png',
    'assets/img/shirt11.png',
    'assets/img/shirt12.png',
  ];
  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      crossAxisSpacing: 15,
      mainAxisSpacing: 30,
      padding: const EdgeInsets.all(10),
      children: images.map((image) {
        return ProductCard(imageUrl: image,);
      }).toList(),
    );
  }
}
