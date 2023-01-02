import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ],
    ["Apple", "5.00", "lib/images/apple.png", Colors.red],
    ["Pineapple", "3.00", "lib/images/pineapple.png", Colors.orange],
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Milk", "8.00", "lib/images/milk.png", Colors.white],
    ["Chicken", "12.80", "lib/images/chicken.png", Colors.accents],
    ["Pizza", "9.00", "lib/images/pizza.png", Colors.grey],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
  ];

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
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
