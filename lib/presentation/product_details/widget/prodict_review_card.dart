import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class ProductReviewCard extends StatelessWidget {
  const ProductReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.textGrey,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage("assets/img/avatar.png"))
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "Everlyn Y**ny",
                style: AppTextStyle.caption(),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star, color: AppColors.ratingYellow),
              const SizedBox(width: 8),
              Text("5.0", style: AppTextStyle.title(fontSize: 20)),
              const SizedBox(width: 8),
              Text("great",
                  style: AppTextStyle.caption(color: AppColors.textGrey)),
            ],
          ),
        ],
      ),
      const SizedBox(height: 15),
      Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.2),
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Product was excelent",
              style: AppTextStyle.caption(color: AppColors.primaryColor),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.2),
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Was good",
              style: AppTextStyle.caption(color: AppColors.primaryColor),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.2),
                border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Poor",
              style: AppTextStyle.caption(color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
      const SizedBox(height: 15),
      Align(
        alignment: Alignment.topLeft,
        child: Text(
          "According to my expectation, this is the best. \nThank you",
          style: AppTextStyle.medium(),
        ),
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.thumb_up,
                color: AppColors.primaryColor,
              ),
              const SizedBox(width: 8),
              Text(
                "Helpfuly?",
                style: AppTextStyle.medium(color: AppColors.primaryColor),
              )
            ],
          ),
          Text(
            "Yesterday",
            style: AppTextStyle.medium(color: AppColors.textGrey),
          )
        ],
      ),
      const SizedBox(height: 30),
      Column(
        children: [
          Divider(
            color: AppColors.textGrey,
          ),
          const SizedBox(height: 20),
        ],
      ),
    ]);
  }
}
