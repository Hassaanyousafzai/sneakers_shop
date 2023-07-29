import 'package:flutter/material.dart';
import 'package:sneakers_shop/models/shop.dart';

class Cart extends ChangeNotifier {
  List<Shop> shopList = [
    Shop(
        name: 'Air Jordan',
        description: 'abcabcabc',
        price: '\$190',
        imagePath: 'images/1.png'),
    Shop(
        name: 'Nike Two',
        description: 'xyzxyzxyz',
        price: '\$230',
        imagePath: 'images/6.png'),
    Shop(
        name: 'Adidas',
        description: 'qweqweqwe',
        price: '\$200',
        imagePath: 'images/3.png'),
    Shop(
        name: 'Vans',
        description: 'poipoipoi',
        price: '\$180',
        imagePath: 'images/4.png'),
    Shop(
        name: 'Converse',
        description: 'asdasdasd',
        price: '\$150',
        imagePath: 'images/5.png')
  ];

  List<Shop> userCart = [];

  List<Shop> getShoeList() {
    return shopList;
  }

  List<Shop> getUserCart() {
    return userCart;
  }

  void addCart(Shop shop) {
    userCart.add(shop);
    notifyListeners();
  }

  void removeCart(Shop shop) {
    userCart.remove(shop);
    notifyListeners();
  }
}
