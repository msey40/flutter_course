import 'package:flutter/material.dart';
import 'product.dart';
import 'product_view.dart';

class ProductData extends StatefulWidget {
  const ProductData({super.key, required this.onCartUpdated});
  final VoidCallback onCartUpdated;

  @override
  State<ProductData> createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
  final List<Product> cart = [];
  final List<Product> products = [
    Product(
      id: 1,
      name: 'Chocolate Cake',
      description: 'Rich chocolate cake with creamy chocolate frosting',
      price: 15.99,
      imagesurl: '../assets/images/cake1.jpg',
    ),
    Product(
      id: 2,
      name: 'Strawberry Cake',
      description: 'Fresh strawberry cake with soft sponge and cream',
      price: 14.99,
      imagesurl: '../assets/images/cake2.jpg',
    ),
    Product(
      id: 3,
      name: 'Vanilla Cake',
      description: 'Classic vanilla cake perfect for any occasion',
      price: 12.99,
      imagesurl: '../assets/images/cake3.jpg',
    ),
    Product(
      id: 4,
      name: 'Red Velvet Cake',
      description: 'Smooth red velvet cake with cream cheese frosting',
      price: 16.99,
      imagesurl: '../assets/images/cake4.jpg',
    ),
    Product(
      id: 5,
      name: 'Cheesecake',
      description: 'Creamy cheesecake with a buttery biscuit base',
      price: 18.99,
      imagesurl: '../assets/images/cake5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductView(
          product: product,
          onAddToCart: () {
            setState(() {
              cart.add(product);
            });
            widget.onCartUpdated(); // add product to cart list

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${product.name} added to cart')),
            );
          },
        );
      },
    );
  }
}
