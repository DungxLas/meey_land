import 'package:flutter/material.dart';
import 'package:meey_land/constant/type_set.dart';
import 'package:meey_land/sale/sale_details.dart';
import 'package:meey_land/sale/sale_news.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height; // height of screen
    final padding = MediaQuery.of(context).padding; // height of status bar
    final appBarHeight = AppBar().preferredSize.height; // height of app bar
    final safeHeight =
        screenHeight - padding.top - padding.bottom - appBarHeight;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
        title: Center(
            child: Text(
          title,
          textAlign: TextAlign.center,
        )),
        actions: const [
          SizedBox(
            width: 32,
            height: 32,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        constraints: BoxConstraints(
          minHeight: safeHeight,
          minWidth: screenWidth,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "lib/assets/images/Vector.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 32),
                child: Saledetails(),
              ),
              // Container(
              //   width: double.infinity,
              //   padding: const EdgeInsets.all(16),
              //   decoration: const BoxDecoration(
              //     color: Colors.white,
              //   ),
              //   child: const SaleNews(
              //     isListPost: true,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 0,
                ),
                child: SizedBox(
                  height: 269, // Chiều cao cố định cho vùng cuộn ngang
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 224,
                        height: 269,
                        padding: const EdgeInsets.all(22),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
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
                              'lib/assets/images/trustworthiness.png',
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
                              onPressed: () {
                                // Xử lý khi nhấn nút "Bắt đầu"
                              },
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
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
                              'lib/assets/images/trustworthiness.png',
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
                              onPressed: () {
                                // Xử lý khi nhấn nút "Bắt đầu"
                              },
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
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
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
                              'lib/assets/images/trustworthiness.png',
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
                              onPressed: () {
                                // Xử lý khi nhấn nút "Bắt đầu"
                              },
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
                    ],
                  ),
                ),
                // ListView(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         color: Colors.white,
                //       ),
                //       width: 224,
                //       height: 269,
                //     ),
                //     Container()
                //   ],
                // ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 44,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Trang chủ / Hà Nội / Mua bán đất nền dự án",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
