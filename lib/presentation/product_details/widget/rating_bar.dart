import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class RatingBarWidget extends StatelessWidget {
  final String title;
  final String value;
  final int percent;
  const RatingBarWidget({required this.title, required this.value, required this.percent, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double ratingBarWidth =  size.width * .35;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.star, color: AppColors.ratingYellow),
        Text(
          title,
          style: AppTextStyle.medium(color: AppColors.textGrey),
        ),
        Stack(
          children: [
            SizedBox(
              width: ratingBarWidth,
              child: Divider(
                thickness: 8,
                color: AppColors.textGrey.withOpacity(.3),
              ),
            ),
            SizedBox(
              width: (ratingBarWidth * percent) / 100 ,
              child: Divider(
                thickness: 8,
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
        Text(
          value,
          style: AppTextStyle.medium(),
        ),
      ],
    );
  }
}
