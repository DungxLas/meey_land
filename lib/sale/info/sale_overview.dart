import 'package:flutter/material.dart';
import 'package:meey_land/widgets/icon_label.dart';

import '../../constant/type_set.dart';

class SaleOverview extends StatelessWidget {
  const SaleOverview({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Text(
                'ML',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  height: 24 / 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: "BePro",
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/icons/image_button.png',
                width: 32,
                height: 32,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TypeSet.sub16Medium.copyWith(color: Colors.white),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFFFFBED),
                    Color(0xFFFFE490),
                    Color(0xFFFECF29),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                child: Iconlabel(
                  iconPath: 'assets/icons/star.png',
                  sizeIcon: 24,
                  label: Text(
                    'Môi giới Chuyên nghiệp',
                    style: TypeSet.sub14Medium
                        .copyWith(color: const Color(0xFF93370D)),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
