import 'package:flutter/material.dart';
import 'package:flutter_course/cart_items_list.dart';
import 'product.dart';
import 'product_detail.dart';

class ProductView extends StatefulWidget {
  const ProductView({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  final Product product;
  final VoidCallback onAddToCart;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetail(
              product: widget.product,
              onAddToCart: widget.onAddToCart,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                widget.product.imagesurl,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Middle info section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.product.description,
                    style: const TextStyle(fontSize: 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${widget.product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent[700],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Button + icon without extra Row
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  CartData.add(widget.product);
                });
                widget.onAddToCart();
              },
              icon: const Icon(Icons.add_shopping_cart),
              label: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
