import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (i) {
        setState(() {
          currentIndex = i;
        });
      },
 selectedItemColor: AppColors.black,
 selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 28,
              color: currentIndex == 0
                  ? AppColors.primaryColor
                  : AppColors.textGrey,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.panorama_horizontal,
              color: currentIndex == 1
                  ? AppColors.primaryColor
                  : AppColors.textGrey,
            ),
            label: "Voucher"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: currentIndex == 2
                  ? AppColors.primaryColor
                  : AppColors.textGrey,
            ),
            label: "Wallet"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: currentIndex == 3
                  ? AppColors.primaryColor
                  : AppColors.textGrey,
            ),
            label: "Settings"),
      ],
    );
  }
}
