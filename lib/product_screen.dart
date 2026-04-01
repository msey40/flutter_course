import 'package:flutter/material.dart';
import 'package:flutter_course/cart_items_list.dart';
import 'package:flutter_course/product_data.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),

              // 🔴 Badge
              Positioned(
                right: 0,
                top: 0,
                child: CartData.count() > 0
                    ? Container(
                        padding: const EdgeInsets.all(4), // ✅ smaller
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 18,
                          minHeight: 18,
                        ),
                        child: Text(
                          '${CartData.count()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ],
      ),
      body: ProductData(
        onCartUpdated: () {
          setState(() {}); // 🔥 rebuild AppBar badge
        },
      ),
    );
  }
}
