import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sun_glasses_shop/components/glasses_tiles.dart';
import 'package:sun_glasses_shop/models/cart.dart';
import 'package:sun_glasses_shop/models/glasses.dart';

class MyShopPage extends StatefulWidget {
  const MyShopPage({super.key});

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {
  void addSunglassesToCart(Glasses glasses) {
    Provider.of<Cart>(context, listen: false).addItemToCart(glasses);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully Added'),
        content: Text('Check your Cart!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'The best sunglasses 🕶️😎 in town!',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: value.getSunGlassesList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Glasses glasses = value.getSunGlassesList()[index];
                return MyGlassesTiles(
                  glasses: glasses,
                  currency: 'R',
                  onTap: () => addSunglassesToCart(glasses),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0, right: 25, left: 25),
            child: Divider(color: Colors.transparent),
          ),
        ],
      ),
    );
  }
}
