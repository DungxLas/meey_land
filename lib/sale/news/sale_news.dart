import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meey_land/cubit/sale_new_cubit.dart';
import 'package:meey_land/cubit/sale_new_state.dart';

import '../../constant/type_set.dart';
import '../../widgets/postcard.dart';

class SaleNews extends StatefulWidget {
  const SaleNews({super.key, required this.isListPost});

  final bool isListPost;

  @override
  State<SaleNews> createState() => _SaleNewsState();
}

class _SaleNewsState extends State<SaleNews> {
  late bool isBuying = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaleNewCubit, SaleNewState>(
      builder: (context, state) {
        if (state.posts.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.isListPost
                    ? const CircularProgressIndicator()
                    : Image.asset(
                        'lib/assets/images/16.png',
                        height: 150,
                      ),
                const SizedBox(height: 16),
                Text(
                  widget.isListPost
                      ? "Đang tải dữ liệu..."
                      : "Chưa có tin đăng",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        }

        List<Widget> content = [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF2F4F7),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isBuying = true;
                      });
                    },
                    child: Text(
                      'Mua bán (5)',
                      style: TypeSet.sub14Medium.copyWith(
                          color: isBuying
                              ? const Color(0xFF1570EF)
                              : const Color(0xFF475467)),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.white,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        isBuying = false;
                      });
                    },
                    child: Text(
                      'Cho thuê (3)',
                      style: TypeSet.sub14Medium.copyWith(
                          color: isBuying
                              ? const Color(0xFF475467)
                              : const Color(0xFF1570EF)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...state.posts.map((post) => PostCard(post: post)).toList(),
        ];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Tin đăng bất động sản",
              style: TypeSet.sub16Medium,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 16),
            ...content,
          ],
        );
      },
    );
  }
}
