import 'package:flutter/material.dart';
import 'package:market_hub/presentation/product_details/buy_now_footer.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text("Welcome to product details"),),
        ],
      ),
      bottomNavigationBar: const BuyNowBottomNav(),
    );
  }
}