import 'package:flutter/material.dart';
import 'package:sun_glasses_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/sunglass hut.png', height: 240),
            ),
            SizedBox(height: 48),
            // title
            Text(
              'The Best Sun Glasses in Town!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),

            //sub title
            SizedBox(height: 48),
            // title
            Text(
              'Brand new Sunglasses created with high quality and offer guaranteed eyes protection!',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 78),
            // start now button
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 150,
                    vertical: 20,
                  ),
                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
