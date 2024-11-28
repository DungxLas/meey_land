import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meey_land/cubit/sale_new_cubit.dart';
import 'package:meey_land/cubit/sale_new_state.dart';
import 'package:meey_land/sale/edit/sale_edit.dart';
import 'package:meey_land/sale/info/sale_details.dart';
import 'package:meey_land/sale/news/sale_news.dart';

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
              "assets/images/Vector.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 32),
                    child: Saledetails(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: 16,
                    ),
                    child: SaleEdit(),
                  ),
                  BlocBuilder<SaleNewCubit, SaleNewState>(
                    builder: (context, state) {
                      return Container(
                        width: double.infinity,
                        height: 200 + state.posts.length * 120,
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: SaleNews(
                          posts: state.posts,
                        ),
                      );
                    },
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
          ],
        ),
      ),
    );
  }
}
