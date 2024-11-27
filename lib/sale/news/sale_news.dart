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
  late var check = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaleNewCubit, SaleNewState>(
      builder: (context, state) {
        List<Widget> content = !widget.isListPost
            ? [
                Image.asset(
                  'lib/assets/images/16.png',
                ),
                const Text(
                  "Chưa có tin đăng",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]
            : [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F4F7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                check = true;
                              });
                            },
                            child: Text(
                              'Mua bán (5)',
                              style: TypeSet.sub14Medium.copyWith(
                                  color:
                                      Color(check ? 0xFF1570EF : 0xFF475467)),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            color: Colors.white,
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                check = false;
                              });
                            },
                            child: Text(
                              'Cho thuê (3)',
                              style: TypeSet.sub14Medium.copyWith(
                                  color:
                                      Color(check ? 0xFF475467 : 0xFF1570EF)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ...(check ? state.posts : state.posts.reversed).map(
                  (e) => PostCard(
                    post: e,
                  ),
                ),
              ];

        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Tin đăng bất động sản",
                style: TypeSet.sub16Medium,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ...content,
          ],
        );
      },
    );
  }
}