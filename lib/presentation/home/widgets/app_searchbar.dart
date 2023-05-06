import 'package:flutter/material.dart';
import 'package:market_hub/utils/colors.dart';

class AppSearchBar extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
        hintText: 'Search...',
        prefixIcon: Icon(Icons.search, color: AppColors.textGrey,),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textGrey),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onChanged: (value) {
      },
    );
  }
}
