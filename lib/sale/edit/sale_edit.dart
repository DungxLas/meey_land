import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meey_land/constant/type_set.dart';

class SaleEdit extends StatelessWidget {
  const SaleEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 269, // Chiều cao cố định cho vùng cuộn ngang
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 224,
            height: 269,
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Xác minh môi giới',
                  style: TypeSet.headline5,
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/images/trustworthiness.png',
                  width: 65,
                  height: 65,
                ),
                const Text(
                  'Giúp tài khoản được bảo vệ và tăng độ uy tín',
                  textAlign: TextAlign.center,
                  style: TypeSet.body14Regular,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => context.go('/sale/edit/auth/sale_auth'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color(0xFF1570EF),
                  ),
                  child: Text(
                    'Bắt đầu',
                    style: TypeSet.sub16Medium.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 224,
            height: 269,
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Đăng tin',
                  style: TypeSet.headline5,
                ),
                const SizedBox(height: 16),
                Image.asset(
                  'assets/images/16.png',
                  width: 65,
                  height: 65,
                ),
                const Text(
                  'Tạo tin đăng để tiếp cận tới hàng trăm KH',
                  textAlign: TextAlign.center,
                  style: TypeSet.body14Regular,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => context.go('/sale/edit/create_post'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color(0xFF1570EF),
                  ),
                  child: Text(
                    'Đăng tin',
                    style: TypeSet.sub16Medium.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
