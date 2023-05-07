import 'package:flutter/material.dart';
import 'package:market_hub/presentation/product_details/widget/about_item_row.dart';
import 'package:market_hub/presentation/product_details/widget/bullet_point.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class AboutProduct extends StatelessWidget {
  const AboutProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "About Item",
              style: AppTextStyle.subTitle(
                  color: AppColors.primaryColor, fontSize: 18),
            ),
            Text(
              "Reviews",
              style: AppTextStyle.subTitle(
                  color: AppColors.textGrey, fontSize: 18),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Stack(
          children: [
            Divider(
              thickness: 2,
              color: AppColors.textGrey.withOpacity(.25),
            ),
            SizedBox(
              width: size.width * .5,
              child: Divider(
                thickness: 2,
                color: AppColors.primaryColor.withOpacity(1),
              ),
            )
          ],
        ),
        const SizedBox(height: 12),
        const AboutItemRow(
            title1: "Brand",
            val1: "ChAmaPRt",
            title2: "Color",
            val2: "Aprikot"),
        const SizedBox(height: 12),
        const AboutItemRow(
            title1: "Category",
            val1: "Casual Shirt",
            title2: "Material",
            val2: "Polymer"),
        const SizedBox(height: 12),
        const AboutItemRow(
            title1: "Condition", val1: "New", title2: "Heavy", val2: "200 g"),
        const SizedBox(height: 25),
        Divider(
          color: AppColors.textGrey,
        ),
        const SizedBox(height: 20),
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Description",
              style: AppTextStyle.subTitle(fontSize: 20),
            )),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: const [
              BulletPoint(
                  text:
                      "Long sleeve shirt in classic fit following button down coller"),
              SizedBox(height: 5),
              BulletPoint(text: "Patch pocker on left shirt"),
              SizedBox(height: 5),
              BulletPoint(text: "Durable combination cutton fabric"),
              SizedBox(height: 5),
              BulletPoint(text: "Combinable and quality dress shirt"),
              SizedBox(height: 5),
              BulletPoint(
                  text:
                      "Go to Classic button down shirt for all special occassions"),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Chat us if there is anything you need to ask about the product ",
            )),
            const SizedBox(height: 20),
                  Row(
                  children:[ Text(
                    "See less",
                    style: AppTextStyle.subTitle(fontSize: 16, color: AppColors.primaryColor)),
                    const SizedBox(width: 10),
                     Icon(Icons.expand_less, color: AppColors.textGrey),
                  ]), 
                  const SizedBox(height: 30),
                  Divider(
                color: AppColors.textGrey,
              ),
      ],
    );
  }
}
