import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/components/coffee_tile.dart';
import 'package:flutter_coffee_shop/models/coffee.dart';
import 'package:flutter_coffee_shop/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

void removeFromCart(Coffee coffee) {
  Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
}

void payNow() {

}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child:Column (
          children: [
            Text(
              'Your cart', 
              style: TextStyle(fontSize: 20),
            ),
            Expanded(child: ListView.builder(itemCount: value.userCart.length, itemBuilder: (context, index) {
              
              Coffee eachCoffee = value.userCart[index];
              return CoffeeTile(
                coffee: eachCoffee, 
                onPressed: () => removeFromCart(eachCoffee), 
                icon: Icon(Icons.remove)
                );
            }),
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                'Pay Now',
                style: TextStyle(color: Colors.white),
                ),
              ),
            
          ),
          ],
      )
    ),
    );
  }
}