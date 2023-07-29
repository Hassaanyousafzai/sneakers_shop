// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/models/cart.dart';
import 'package:sneakers_shop/models/shop.dart';

class CartTile extends StatefulWidget {
  Shop shop;

  CartTile({super.key, required this.shop});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  void removeCartItem() {
    Provider.of<Cart>(context, listen: false).removeCart(widget.shop);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(blurRadius: 1),
            ]),
        child: ListTile(
          contentPadding: EdgeInsets.all(20),
          leading: Image.asset(widget.shop.imagePath),
          title: Text(widget.shop.name),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: removeCartItem,
          ),
        ),
      ),
    );
  }
}
