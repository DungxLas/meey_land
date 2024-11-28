import 'package:flutter/material.dart';
import 'package:meey_land/models/postcard_info.dart';
import 'package:meey_land/widgets/postcard.dart';

import '../../constant/type_set.dart';

class SaleNews extends StatefulWidget {
  const SaleNews({super.key, required this.posts});

  final List<PostCardInfo> posts;

  @override
  State<SaleNews> createState() => _SaleNewsState();
}

class _SaleNewsState extends State<SaleNews>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            "Tin đăng bất động sản",
            style: TypeSet.sub16Medium,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 16),
        if (widget.posts.isEmpty) ...[
          const CircularProgressIndicator()
        ] else ...[
          Container(
            color: const Color(0xFFF2F4F7),
            child: TabBar(
              controller: _tabController,
              labelColor: const Color(0xFF1570EF),
              unselectedLabelColor: const Color(0xFF475467),
              indicatorColor: const Color(0xFF1570EF),
              tabs: const [
                Tab(text: 'Mua bán (5)'),
                Tab(text: 'Cho thuê (3)'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    ...widget.posts.map((post) {
                      return PostCard(post: post);
                    }),
                  ],
                ),
                Column(
                  children: [
                    ...widget.posts.reversed.map((post) {
                      return PostCard(post: post);
                    }),
                  ],
                ),
              ],
            ),
          ),
        ]
      ],
    );
  }
}
