import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier{
  final List<Coffee> _shop = [
    Coffee(
      name: 'Coffee',
      price: '1.50€',
     imagePath: 'lib/images/coffee.png',
     ),
     Coffee(
      name: 'Donut',
      price: '2.00€',
     imagePath: 'lib/images/donut.png',
     ),
     Coffee(
      name: 'Milkshake',
      price: '2.50€',
     imagePath: 'lib/images/milkshake.png',
     ),
     Coffee(
      name: 'Slushie',
      price: '2.50€',
     imagePath: 'lib/images/slushie.png',
     ),
  ];

  List<Coffee> _userCart = [

  ];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemTocart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}