import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:market_hub/presentation/home/widgets/app_notification_widget.dart';
import 'package:market_hub/presentation/home/widgets/app_searchbar.dart';
import 'package:market_hub/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:market_hub/presentation/widgets/unfocus_widget.dart';
import 'package:market_hub/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: UnFocusWidget(
        child: Container(
            padding:
                const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
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
            ])),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
