import 'package:flutter/material.dart';
import 'package:market_hub/presentation/product_details/product_details.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  const ProductCard({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ProductDetailsPage()));
      },
      child: Container(
        color: AppColors.textGrey.withOpacity(.09),
        child: Stack(
          children: [
            Image.asset(imageUrl),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(""),
                      Icon(
                        Icons.favorite_outline,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: double.infinity,
                  color: AppColors.white,
                  child: Column(children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shirt",
                          style:
                              AppTextStyle.caption(color: AppColors.textGrey),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("Essential men's shirt sleev crewneck T-shirt",
                        style: AppTextStyle.medium()),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: AppColors.ratingYellow,
                            ),
                            Text(
                              " 4.9 | 2236",
                              style: AppTextStyle.caption(
                                  color: AppColors.textGrey),
                            ),
                          ],
                        ),
                        Text(
                          "\$18.00",
                          style: AppTextStyle.subTitle(
                              color: AppColors.primaryColor),
                        )
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
