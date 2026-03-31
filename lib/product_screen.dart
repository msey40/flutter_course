import 'package:flutter/material.dart';
import 'product_data.dart';
import 'product_view.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cake Products')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductView(product: products[index]);
        },
      ),
    );
  }
}
