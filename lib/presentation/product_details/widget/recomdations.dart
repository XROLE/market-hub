import 'package:flutter/material.dart';
import 'package:market_hub/presentation/widgets/product_card.dart';

class Recommendations extends StatelessWidget {
  final List<String> images = [
    'assets/img/shirt4.png',
    'assets/img/shirt5.png',
  ];
  Recommendations({super.key});

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
