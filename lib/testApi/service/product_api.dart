import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/products.dart';

class ProductApi {
  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(
      Uri.parse(
        'https://thingproxy.freeboard.io/fetch/https://fakestoreapi.com/products',
      ),
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      return data.map((e) {
        return Product(
          id: e['id'],
          title: e['title'],
          description: e['description'],
          price: (e['price'] as num).toDouble(),
          image: e['image'],
        );
      }).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
