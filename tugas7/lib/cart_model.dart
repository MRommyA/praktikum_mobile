import 'package:flutter/foundation.dart';

class Product {
  final String nama, urlGambar;

  Product(this.nama, this.urlGambar);
}

class CartItem {
  final Product produk;
  int qty;

  CartItem(this.produk, this.qty);
}

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];
  List<CartItem> get items => _items;
  int get totalItem => _items.fold(0, (sum, item) => sum + item.qty);

  void tambahProduk(Product produk) {
    final index = _items.indexWhere((item) => item.produk.nama == produk.nama);

    if (index >= 0) {
      _items[index].qty++;
    } else {
      _items.add(CartItem(produk, 1));
    }

    notifyListeners();
  }

  void hapusProduk(Product product) {
    final index = _items.indexWhere((item) => item.produk.nama == product.nama);
    if (index >= 0) {
      if (_items[index].qty > 1) {
        _items[index].qty--;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }
}
