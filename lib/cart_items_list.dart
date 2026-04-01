import 'package:flutter/material.dart';
import 'product.dart';

class CartData {
  static List<Product> cart = [];

  static void add(Product product) {
    cart.add(product);
  }

  static int count() {
    return cart.length;
  }
}

class CartItemsList extends StatefulWidget {
  const CartItemsList({super.key});

  @override
  State<CartItemsList> createState() => _CartItemsListState();
}

class _CartItemsListState extends State<CartItemsList> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
