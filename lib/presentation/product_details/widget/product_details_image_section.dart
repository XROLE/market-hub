import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';

class ProductDetailsImageSection extends StatelessWidget {
  final String productImageUrl;
  const ProductDetailsImageSection({required this.productImageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: size.height * .4,
              width: size.width,
              color: AppColors.textGrey.withOpacity(.04),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: AppColors.darkBlue.withOpacity(.7),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 50,
                          width: 50,
                          color: AppColors.darkBlue.withOpacity(.7),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 50,
                          width: 50,
                          color: AppColors.darkBlue.withOpacity(.7),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 50,
                          width: 50,
                          color: AppColors.darkBlue.withOpacity(.7),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 5, child: Image.asset(productImageUrl)),
                ],
              ),
            );
  }
}