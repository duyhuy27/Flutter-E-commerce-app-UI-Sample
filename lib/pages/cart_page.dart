import 'package:e_commerce_app/components/cart_item.dart';
import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/model/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            //Text header
            const Text(
              'Your cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            
            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getCartUser().length,
                itemBuilder: (context, index) {
                  Shoes individualShoes = value.getCartUser()[index];
                  return CartItem(
                    shoes: individualShoes,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
