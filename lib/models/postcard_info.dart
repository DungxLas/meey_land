final class PostCardInfo {
  PostCardInfo({
    required this.text,
    required this.address,
    required this.square,
    required this.numBedRoom,
    required this.numBathRoom,
    required this.price,
    required this.image,
  });

  final String text;
  final String address;
  final String square;
  final String numBedRoom;
  final String numBathRoom;
  final String price;
  final String image;

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'address': address,
      'square': square,
      'numBedRoom': numBedRoom,
      'numBathRoom': numBathRoom,
      'price': price,
      'image': image,
    };
  }

  factory PostCardInfo.fromMap(Map<String, dynamic> map) {
    return PostCardInfo(
      text: map['text'],
      address: map['address'],
      square: map['square'],
      numBedRoom: map['numBedRoom'],
      numBathRoom: map['numBathRoom'],
      price: map['price'],
      image: map['image'],
    );
  }

  PostCardInfo copyWith({
    String? text,
    String? address,
    String? square,
    String? numBedRoom,
    String? numBathRoom,
    String? price,
    String? image,
  }) {
    return PostCardInfo(
      text: text ?? this.text,
      address: address ?? this.address,
      square: square ?? this.square,
      numBedRoom: numBedRoom ?? this.numBedRoom,
      numBathRoom: numBathRoom ?? this.numBathRoom,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  @override
  String toString() {
    return 'PostCardInfo(text: $text, address: $address, square: $square, numBedRoom: $numBedRoom, numBathRoom: $numBathRoom, price: $price, image: $image)';
  }
}
