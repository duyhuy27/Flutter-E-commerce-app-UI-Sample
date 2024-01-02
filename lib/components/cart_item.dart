import 'package:e_commerce_app/model/cart.dart';
import 'package:e_commerce_app/model/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoes shoes;
  CartItem({super.key, required this.shoes});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).deleteShoesFromCart(widget.shoes);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoes.imagePath),
        title: Text(
          widget.shoes.name,
          style: TextStyle(
            color: Colors.grey[900],
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(widget.shoes.price + '\$'),
        trailing:
            IconButton(onPressed: removeFromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}
