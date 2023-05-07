import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class BuyNowBottomNav extends StatelessWidget {
  const BuyNowBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      child: Row(
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Total Price",
                style: AppTextStyle.caption(color: AppColors.textGrey),
              ),
              const SizedBox(height: 3),
              Text(
                "\$18.00",
                style: AppTextStyle.title(
                  color: AppColors.primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                          borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)
                        )),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.alarm_add_outlined,
                              color: AppColors.white,
                            ),
                            const SizedBox(width: 6),
                            Text("1",
                                style: AppTextStyle.medium(
                                  color: AppColors.white,
                                )),
                          ]),
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                          borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)
                        )),
                        child: Center(
                            child: Text(
                          "Buy NOW",
                          style: AppTextStyle.medium(color: AppColors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
