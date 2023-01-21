import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shooping/Features/modals/productsModals.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }
}
