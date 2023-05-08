import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';

class AppNotificationWidget extends StatelessWidget {
  final String val;
  final IconData iconData;
  const AppNotificationWidget(
      {required this.val, required this.iconData, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(iconData, size: 26, color: AppColors.black,),
        Positioned(
          bottom: 15,
          left: 15,
          child: Container(
            height: 16,
            width: 18,
            decoration: BoxDecoration(
                color: AppColors.red, borderRadius: BorderRadius.circular(5)),
            child: Center(
                child: Text(
              val,
              style:  TextStyle(
                  color: AppColors.white,
                  fontSize: 10,
                  ),
            )),
          ),
        ),
      ],
    );
  }
}
