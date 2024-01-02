import 'package:e_commerce_app/model/shoes.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list shoes for sales
  List<Shoes> listShoes = [
    Shoes(
        name: 'Air Jordens',
        price: '220',
        imagePath: 'lib/img/s_1.png',
        description: 'Its very usefully for basketball and fashin on street'),
    Shoes(
        name: 'Air Force 1',
        price: '250',
        imagePath: 'lib/img/s_2.png',
        description: 'Very convenient for sometime you will walk on street'),
    Shoes(
        name: 'KD Kerry',
        price: '180',
        imagePath: 'lib/img/s_3.png',
        description: 'A big dynamic shoes for sport or fashion'),
    Shoes(
        name: 'Lebron Hams',
        price: '300',
        imagePath: 'lib/img/s_4.png',
        description: 'A good a daddy shoes'),
    Shoes(
        name: 'Zoom Feaks',
        price: '280',
        imagePath: 'lib/img/s_5.png',
        description: 'Best seller in the range of price under 300\$'),
  ];

  // list of item in usercart
  List<Shoes> userCart = [];
  //get list of shoes for sale
  List<Shoes> getListShoes() {
    return listShoes;
  }

  //get cart
  List<Shoes> getCartUser() {
    return userCart;
  }

  //add item on cart
  void addShoes(Shoes shoes) {
    userCart.add(shoes);
    notifyListeners();
  }

  //remove item from cart
  void deleteShoesFromCart(Shoes shoes) {
    userCart.remove(shoes);
    notifyListeners();
  }
}
