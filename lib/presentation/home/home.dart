import 'package:flutter/material.dart';
import 'package:market_hub/presentation/home/widgets/app_notification_widget.dart';
import 'package:market_hub/presentation/home/widgets/app_searchbar.dart';
import 'package:market_hub/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:market_hub/presentation/home/widgets/product_grid.dart';
import 'package:market_hub/presentation/product_details/widget/prodict_review_card.dart';
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
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 0,
              floating: true,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
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
              ),
              backgroundColor: AppColors.white,
              expandedHeight: size.height * .25,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/img/sample_shirts1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            SliverToBoxAdapter(
              child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Best Sale Product",
                              style: AppTextStyle.subTitle(fontSize: 18),
                            ),
                            Text(
                              "See More",
                              style: AppTextStyle.subTitle(
                                  fontSize: 18,
                                  color: AppColors.primaryColor),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 20),
                  ])),
            ),
 ProductGrid()
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
