import '../../models/cart_item.dart';

class CartManager {
  final Map<String, CardItem> _items = {
    'p1': CardItem(
      id: 'c1',
      title: 'Red Shirt',
      price: 29.29,
      quantity: 2,
    ),
  };

  int get productCount {
    return _items.length;
  }

  List<CardItem> get product {
    return _items.values.toList();
  }

  Iterable<MapEntry<String, CardItem>> get productEntries {
    return {..._items}.entries;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }
}
