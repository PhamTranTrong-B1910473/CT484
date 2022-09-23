class CardItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CardItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });

  CardItem copyWith({
    String? id,
    String? title,
    int? quantity,
    double? price,
  }) {
    return CardItem(
        id: id ?? this.id,
        title: title ?? this.title,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price);
  }
}
