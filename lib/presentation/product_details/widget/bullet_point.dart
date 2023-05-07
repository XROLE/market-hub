import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  final String text;
 const BulletPoint({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Text('• '),
        Expanded(
          child: Text(
            text,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}