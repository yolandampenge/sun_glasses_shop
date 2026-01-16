import 'package:flutter/material.dart';
import 'package:sun_glasses_shop/components/glasses_tiles.dart';

class MyShopPage extends StatefulWidget {
  const MyShopPage({super.key});

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            itemBuilder: (context, index) {
              return MyGlassesTiles();
            },
          ),
        ),
      ],
    );
  }
}
