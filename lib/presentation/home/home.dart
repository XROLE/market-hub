import 'package:flutter/material.dart';
import 'package:market_hub/presentation/home/widgets/app_notification_widget.dart';
import 'package:market_hub/presentation/home/widgets/app_searchbar.dart';
import 'package:market_hub/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:market_hub/presentation/home/widgets/product_grid.dart';
import 'package:market_hub/presentation/widgets/unfocus_widget.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: UnFocusWidget(
        child: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(children: [
                    SizedBox(
                      width: size.width,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: size.width * .7, child: AppSearchBar()),
                            const AppNotificationWidget(
                                val: "1",
                                iconData: Icons.shopping_cart_checkout_outlined),
                            const AppNotificationWidget(
                                val: "9+", iconData: Icons.add_moderator_outlined),
                          ]),
                    ),
                    SizedBox(height: size.height * .03),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Best Sale Product",
                            style: AppTextStyle.subTitle(fontSize: 18),
                          ),
                          Text(
                            "See More",
                            style: AppTextStyle.subTitle(
                                fontSize: 18, color: AppColors.primaryColor),
                          ),
                        ]),
                    SizedBox(height: size.height * .01),
                    SizedBox(height: size.height * .74, child: ProductGrid()),
                 
                  ])),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
