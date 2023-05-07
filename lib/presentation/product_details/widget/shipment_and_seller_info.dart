import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class ShipmentAndSellerInfo extends StatelessWidget {
  const ShipmentAndSellerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Shippings Information",
              style: AppTextStyle.subTitle(fontSize: 20),
            )),
        const SizedBox(height: 20),
        Row(
          children: [
            Text("Delivery",
                style: AppTextStyle.medium(color: AppColors.textGrey)),
            const SizedBox(width: 8),
            Text("Shipping from Jabarin indonesia",
                style: AppTextStyle.subTitle()),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text("Shipping",
                style: AppTextStyle.medium(color: AppColors.textGrey)),
            const SizedBox(width: 8),
            Text("FREE international shipping", style: AppTextStyle.subTitle()),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text("Arrive",
                style: AppTextStyle.medium(color: AppColors.textGrey)),
            const SizedBox(width: 8),
            Text("Estimated arrival on 25 - 27 Oct 2023",
                style: AppTextStyle.subTitle()),
          ],
        ),
        const SizedBox(height: 30),
        Divider(
          color: AppColors.textGrey,
        ),
        const SizedBox(height: 30),
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Seller Information",
              style: AppTextStyle.subTitle(fontSize: 20),
            )),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: size.width * .2,
              width: size.width * .2,
              decoration: BoxDecoration(
                  color: AppColors.textGrey.withOpacity(.13),
                  borderRadius: BorderRadius.circular(size.width * .1)),
              child: Center(
                  child: Text(
                "Thrifting Store",
                style: AppTextStyle.medium(),
              )),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Thrifting Store",
                style: AppTextStyle.subTitle(fontSize: 18),
              ),
              const SizedBox(height: 15),
              Text(
                "Arrive 5 min | 96% personal feedback",
                style: AppTextStyle.medium(color: AppColors.textGrey),
              ),
              const SizedBox(height: 15),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Visit Store",
                    style: AppTextStyle.medium(color: AppColors.primaryColor),
                  )
                ]),
              ),
            ]),
          ],
        ),
        const SizedBox(height: 30),
        Divider(
          color: AppColors.textGrey,
        ),
      ],
    );
  }
}
