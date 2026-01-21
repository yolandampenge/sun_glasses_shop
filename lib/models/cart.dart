import 'package:flutter/material.dart';
import 'package:sun_glasses_shop/models/glasses.dart';
import 'package:sun_glasses_shop/pages/shop_page.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Glasses> sunglasses = [
    Glasses(
      name: 'Brown Shades',
      price: '250',
      description: 'Brown reflects the sun nices',
      imagePath: 'lib/images/common.jpg',
    ),
    Glasses(
      name: 'Classic Shades',
      price: '300',
      description: 'Class is never out of style',
      imagePath: 'lib/images/legendary.jpg',
    ),
    Glasses(
      name: 'Ama 2K',
      price: '150',
      description: 'Shade for Ama 2K',
      imagePath: 'lib/images/newKids.jpg',
    ),
    Glasses(
      name: 'Old School',
      price: '150',
      description: 'Shades for Old School Peps',
      imagePath: 'lib/images/newStyle.jpg',
    ),
    Glasses(
      name: 'Stylish',
      price: '150',
      description: 'This style will always be in Fashion!',
      imagePath: 'lib/images/newStyle.jpg',
    ),
  ];

  // List of items in the cart
  List<Glasses> userCart = [];

  // gettlist of sunglasses for sale
  List<Glasses> getSunGlassesList() {
    return sunglasses;
  }
  // get cart

  List<Glasses> getUserCart() {
    return userCart;
  }

  //add item to cart

  void addItemToCart(Glasses newSunGlasses) {
    userCart.add(newSunGlasses);
    notifyListeners();
  }

  //remove item to cart

  void removeItemFromCart(Glasses newSunGlasses) {
    userCart.remove(newSunGlasses);
    notifyListeners();
  }
}
