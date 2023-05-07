import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class AboutItemRow extends StatelessWidget {
  final String title1;
  final String title2;
  final String val1;
  final String val2;
  const AboutItemRow({required this.title1, required this.title2, required this.val1, required this.val2, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Text(
                title1,
                style: AppTextStyle.medium(color: AppColors.textGrey),
              ),
              const SizedBox(width: 8),
              Text(
               val1,
                style: AppTextStyle.subTitle(),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Text(
                title2,
                style: AppTextStyle.medium(color: AppColors.textGrey),
              ),
              const SizedBox(width: 8),
              Text(
                val2,
                style: AppTextStyle.subTitle(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
