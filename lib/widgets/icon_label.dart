import 'package:flutter/material.dart';

class Iconlabel extends StatelessWidget {
  const Iconlabel({
    super.key,
    required this.iconPath,
    required this.sizeIcon,
    required this.label,
  });

  final String iconPath;
  final double sizeIcon;
  final Text label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: sizeIcon,
          height: sizeIcon,
          //
          // color: Color(0xFF98A2B3),
        ),
        const SizedBox(width: 8),
        label,
      ],
    );
  }
}
