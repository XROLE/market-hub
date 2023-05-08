import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class SampleImageStack extends StatelessWidget {
  final String imageUrl;
  final String title;

  const SampleImageStack(
      {required this.title, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
              fit: BoxFit.cover,
          ),
        )),
        Container(
          color: AppColors.bgColor.withOpacity(.2),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#BEAUTYSALE",
                    style: AppTextStyle.title(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: AppTextStyle.title(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "Check this out",
                      style: AppTextStyle.caption(color: AppColors.white),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
          ]),
        ),
      ],
    );
  }
}
