import 'package:flutter/material.dart';
import 'package:market_hub/presentation/home/widgets/app_notification_widget.dart';
import 'package:market_hub/utils/colors.dart';


   AppBar mktAppBar () => AppBar(
    elevation: 0,
    backgroundColor: AppColors.white,
    iconTheme: IconThemeData(color: AppColors.textGrey),
      title: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Icon(Icons.favorite_border_outlined),
                Icon(Icons.share),
                AppNotificationWidget(iconData: Icons.access_alarm, val: "1",),
              ],),
            )
          ],
        ),
      ),
    );
