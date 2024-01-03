import 'dart:convert';

import 'package:foodapp/infra/model/category_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CategoryService {
  final String baseUrl;
  final Client _httpClient;

  CategoryService(
      {http.Client? httpClient, this.baseUrl = 'https://fakestoreapi.com'})
      : _httpClient = httpClient ?? http.Client();

  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await _httpClient.get(Uri.parse('$baseUrl/products'));
      if (response.statusCode == 200) {
        if (response.body.isNotEmpty) {
          final body = jsonDecode(response.body);
          final mappedList = body.map((item) {
            item['title'] = item['title'].toString().substring(0, 8);
            return CategoryModel.fromJson(item);
          }).toList();
          return List<CategoryModel>.from(mappedList);
        }
      }
      throw Exception('Erro');
    } catch (error) {
      throw Exception('Erro');
    }
  }
}
