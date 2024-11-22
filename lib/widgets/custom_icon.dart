import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String imagePath; // Đường dẫn ảnh
  final double size; // Kích thước ảnh
  final VoidCallback onTap; // Hàm callback khi bấm

  const CustomIcon({
    super.key,
    required this.imagePath,
    this.size = 20.0,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        width: size + 20,
        height: size + 20,
        child: Image.asset(
          imagePath,
          width: size,
          height: size,
        ),
      ),
    );
  }
}
