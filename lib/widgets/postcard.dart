import 'package:flutter/material.dart';

import '../constant/type_set.dart';
import 'icon_label.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: double.infinity,
      constraints: const BoxConstraints(
        maxHeight: 118,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Image.asset(
                    'lib/assets/images/City_vector.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  '1 tiếng trước',
                  style: TypeSet.body14Regular
                      .copyWith(color: const Color(0xFF475467)),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cần tiền bán gấp mảnh hoa hậu tại Chợ Mộc, Minh Quang',
                  style: TypeSet.sub14Medium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                const Text(
                  'Q. Thanh Xuân, TP. Hà Nội',
                  style: TypeSet.caption12Regular,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Iconlabel(
                      iconPath: 'lib/assets/icons/format_square.png',
                      sizeIcon: 16,
                      label: Text(
                        '60 m2',
                        style: TypeSet.caption12Regular.copyWith(
                          color: const Color(0xFF98A2B3),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Iconlabel(
                      iconPath: 'lib/assets/icons/bed_single.png',
                      sizeIcon: 16,
                      label: Text(
                        '2',
                        style: TypeSet.caption12Regular.copyWith(
                          color: const Color(0xFF98A2B3),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Iconlabel(
                      iconPath: 'lib/assets/icons/bathtub_01.png',
                      sizeIcon: 16,
                      label: Text(
                        '1',
                        style: TypeSet.caption12Regular.copyWith(
                          color: const Color(0xFF98A2B3),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text('Price'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
