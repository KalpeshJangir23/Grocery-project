import 'package:flutter/material.dart';

class Cart_Modal extends ChangeNotifier {
  final List _shopitems = [
    ["Avocado", "850", "assets/avocado.png", Colors.green],
    ["Banaan", "60", "assets/banana.png", Colors.yellow],
    ["Chicken", "1200", "assets/chicken.png", Colors.brown],
    ["Water", "20", "assets/water.png", Colors.blue],
  ];
  get Shopitem => _shopitems;

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopitems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopitems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
