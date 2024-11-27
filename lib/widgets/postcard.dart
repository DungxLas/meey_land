import 'package:flutter/material.dart';
import 'package:meey_land/models/postcard_info.dart';

import '../constant/type_set.dart';
import 'icon_label.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
  });

  final PostCardInfo post;

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
                    post.image,
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
                Text(
                  post.text,
                  style: TypeSet.sub14Medium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  post.address,
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
                        '${post.square} m2',
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
                        post.numBedRoom,
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
                        post.numBathRoom,
                        style: TypeSet.caption12Regular.copyWith(
                          color: const Color(0xFF98A2B3),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(post.price),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
