import 'package:flutter/material.dart';
import 'package:meey_land/widgets/icon_label.dart';
import 'package:readmore/readmore.dart';

import '../constant/type_set.dart';
import 'sale_action.dart';
import 'sale_overview.dart';

class Saledetails extends StatelessWidget {
  const Saledetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: double.infinity,
          height: 86,
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned(
                // top: 0,
                // left: 0,
                // right: 0,
                child: Image.asset(
                  'lib/assets/images/City_vector.png',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'lib/assets/icons/image_button.png',
                  width: 32,
                  height: 32,
                ),
              ),
            ],
          ),
        ),
        const SaleOverview(
          name: 'Mai Phương Vinhomes Vin home',
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ReactInfo(
                number: '0',
                content: 'Tin đăng',
              ),
              SizedBox(width: 16),
              ReactInfo(
                number: '0',
                content: 'Điểm TB tin đăng',
              ),
              SizedBox(width: 16),
              ReactInfo(
                number: '0',
                content: 'Lượt xem',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const SaleAction(),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Giới thiệu',
            style: TypeSet.headline5.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        ReadMoreText(
          'Hiện tại Thanh là Co-Founder và là Giảng viên/Coach/Mentor chính của Better You – Đơn vị cung cấp dịch vụ đào tạo, mentoring về Nhân sự và Kĩ năng mềm. Hiện tại Thanh là Co-Founder và là Giảng viên/Coach/Mentor chính của Better You – Đơn vị cung cấp dịch vụ đào tạo, mentoring về Nhân sự và Kĩ năng mềm.Hiện tại Thanh là Co-Founder và là Giảng viên/Coach/Mentor chính của Better You – Đơn vị cung cấp dịch vụ đào tạo, mentoring về Nhân sự và Kĩ năng mềm.Hiện tại Thanh là Co-Founder và là Giảng viên/Coach/Mentor chính của Better You – Đơn vị cung cấp dịch vụ đào tạo, mentoring về Nhân sự và Kĩ năng mềm.',
          trimMode: TrimMode.Line,
          trimLines: 3,
          trimCollapsedText: '  Xem thêm',
          trimExpandedText: '  Thu gọn',
          moreStyle: TypeSet.body14Regular.copyWith(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          lessStyle: TypeSet.body14Regular.copyWith(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          style: TypeSet.body14Regular.copyWith(color: Colors.white),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 16,
        ),
        Content(
          icon: Image.asset(
            'lib/assets/icons/map.png',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
          label: 'Khu vực hoạt động',
          moreContent: const [
            'Quận 2, Hồ Chí Minh (98)',
            'Quận 2, Hồ Chí Minh (98)',
            'Quận 2, Hồ Chí Minh (98)'
          ],
        ),
        Content(
          icon: Image.asset(
            'lib/assets/icons/Frame.png',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
          label: 'Loại hình môi giới',
          moreContent: const [
            'Căn hộ chung cư (98)',
            'Căn hộ chung cư (98)',
            'Căn hộ chung cư (98)',
          ],
        ),
        Iconlabel(
          iconPath: 'lib/assets/icons/chung_chi.png',
          sizeIcon: 24,
          label: Text(
            'Chứng chỉ môi giới',
            style: TypeSet.sub14Medium.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Iconlabel(
          iconPath: 'lib/assets/icons/Check.png',
          sizeIcon: 24,
          label: Text(
            'Chứng chỉ môi giới',
            style: TypeSet.caption12Regular.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: double.infinity,
          height: 1,
          margin: const EdgeInsets.only(bottom: 16.0),
          color: Colors.white,
        ),
        Content(
          icon: Image.asset(
            'lib/assets/icons/youtube.png',
            width: 24,
            height: 24,
            //color: Colors.white,
          ),
          moreContent: const [
            'https://www.youtube.com/@Phuongvinhomes66',
            'https://www.youtube.com/@Phuongvinhomes66',
            'https://www.youtube.com/@Phuongvinhomes66',
          ],
          contentStyle:
              TypeSet.body14Regular.copyWith(color: const Color(0xFFB2DDFF)),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(
              'Ngày tham gia: ',
              style: TypeSet.caption12Regular.copyWith(color: Colors.white),
            ),
            Text(
              '24/7/2023',
              style: TypeSet.caption12Medium.copyWith(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}

class Content extends StatefulWidget {
  Content({
    super.key,
    required this.icon,
    this.label = '',
    required this.moreContent,
    TextStyle? labelStyle,
    TextStyle? contentStyle,
  })  : labelStyle =
            labelStyle ?? TypeSet.sub14Medium.copyWith(color: Colors.white),
        contentStyle = contentStyle ??
            TypeSet.caption12Regular.copyWith(color: Colors.white);

  final String label;
  final List<String> moreContent;
  final TextStyle labelStyle;
  final TextStyle contentStyle;
  final Widget icon;

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  late List<Widget> content;
  late List<Widget> displayContent;

  @override
  void initState() {
    super.initState();
    if (widget.moreContent.isEmpty) {
      displayContent = [];
    } else if (widget.moreContent.length == 1)
      displayContent = [Text(widget.moreContent[0])];
    else {
      content = widget.moreContent
          .map(
            (e) => Text(
              e,
              style: widget.contentStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
          .toList();
      displayContent = [
        Text(
          widget.moreContent[0],
          style: widget.contentStyle,
        ),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: showMore,
          child: Text(
            'Xem thêm (+3)',
            style: TypeSet.caption12Regular.copyWith(
              color: const Color(0xFFB2DDFF),
            ),
          ),
        ),
      ];
    }
  }

  void showMore() {
    setState(() {
      displayContent = [
        ...content,
        const SizedBox(
          height: 4,
        ),
        GestureDetector(
          onTap: showLess,
          child: Text(
            'Thu gọn',
            style: TypeSet.caption12Regular.copyWith(
              color: const Color(0xFFB2DDFF),
            ),
          ),
        ),
      ];
    });
  }

  void showLess() {
    setState(() {
      displayContent = [
        Text(
          widget.moreContent[0],
          style: widget.contentStyle,
        ),
        const SizedBox(
          height: 4,
        ),
        GestureDetector(
          onTap: showMore,
          child: Text(
            'Xem thêm (+3)',
            style: TypeSet.caption12Regular.copyWith(
              color: const Color(0xFFB2DDFF),
            ),
          ),
        ),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.icon,
          const SizedBox(width: 8),
          SizedBox(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.label.isNotEmpty) ...[
                  Text(
                    widget.label,
                    style: widget.labelStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
                ...displayContent,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReactInfo extends StatelessWidget {
  const ReactInfo({
    super.key,
    required this.number,
    required this.content,
  });

  final String number;
  final String content;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: number,
          style: TypeSet.sub14Medium.copyWith(color: Colors.white),
          children: [
            TextSpan(
              text: " $content",
              style: TypeSet.caption12Regular.copyWith(color: Colors.white),
            )
          ]),
    );
  }
}
