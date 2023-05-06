import 'package:flutter/material.dart';

class UnFocusWidget extends StatelessWidget {
  final Widget child;
  const UnFocusWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: child,
    );
  }
}
