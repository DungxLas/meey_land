import 'package:meey_land/models/postcard_info.dart';

final class SaleNewState {
  final List<PostCardInfo> posts;

  const SaleNewState({required this.posts});

  SaleNewState copyWith({
    List<PostCardInfo>? posts,
  }) {
    return SaleNewState(
      posts: posts ?? this.posts,
    );
  }
}
