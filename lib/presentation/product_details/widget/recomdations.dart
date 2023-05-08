import 'package:flutter/material.dart';
import 'package:market_hub/presentation/widgets/product_card.dart';
import 'package:market_hub/utils/app_helper.dart';

class Recommendations extends StatelessWidget {
  final List<String> images = [
    "one",
    'two',
  ];
  Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      crossAxisSpacing: 15,
      mainAxisSpacing: 30,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10),
      children: images.map((image) {
        return ProductCard(imageUrl: AppHelper.recommendProduct(), canNavigate: false,);
      }).toList(),
    );
  }
}
