import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Avocado", "4.00", "lib/assets/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/assets/images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "lib/assets/images/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/assets/images/water.png", Colors.blue],
  ];

  //List of cart items

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item to cart

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
  //calculate total price

  String calculateTotal() {
    double totalPrice = 0;
    for (var i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
