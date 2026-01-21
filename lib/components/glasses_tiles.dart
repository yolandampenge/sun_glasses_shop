import 'package:flutter/material.dart';
import 'package:sun_glasses_shop/models/glasses.dart';

class MyGlassesTiles extends StatelessWidget {
  Glasses glasses;
  String currency;
  MyGlassesTiles({super.key, required this.glasses, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.asset(glasses.imagePath),
          ),
          // description
          SizedBox(height: 35),
          Text(glasses.description),

          // price and details
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      glasses.name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$currency ${glasses.price}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),

                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
