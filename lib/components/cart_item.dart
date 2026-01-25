import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sun_glasses_shop/models/cart.dart';
import 'package:sun_glasses_shop/models/glasses.dart';

class CartItem extends StatefulWidget {
  Glasses sunglasses;
  CartItem({super.key, required this.sunglasses});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(
      context,
      listen: false,
    ).removeItemFromCart(widget.sunglasses);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.sunglasses.imagePath),
        title: Text(widget.sunglasses.name),
        subtitle: Text(widget.sunglasses.price),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
