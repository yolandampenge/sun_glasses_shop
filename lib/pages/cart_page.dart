import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sun_glasses_shop/components/cart_item.dart';
import 'package:sun_glasses_shop/models/cart.dart';
import 'package:sun_glasses_shop/models/glasses.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Glasses sunGlasses = value.getUserCart()[index];

                  return CartItem(sunglasses: sunGlasses);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
