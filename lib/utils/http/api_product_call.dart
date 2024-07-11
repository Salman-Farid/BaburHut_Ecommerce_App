// api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_models.dart';


class ApiService {
  static var client = http.Client();
  static Future<List?> fetchProducts() async {
    const String url = 'https://fakestoreapi.com/products';
    var response = await client.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return productFromJson(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  }
}
