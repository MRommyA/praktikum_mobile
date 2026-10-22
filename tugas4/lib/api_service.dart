import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tugas4/article_model.dart';

class ApiService {
  static const _apiKey = '1be46a3529594e5e8c569d2a68730b4f';

  static const _baseUrl =
      'https://newsapi.org/v2/everything?q=apple&from=2026-10-20&to=2026-10-20&sortBy=popularity&apiKey=$_apiKey';

  Future<List<Article>> fetchArticles() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> articleJson = json['articles'];
        return articleJson.map((item) => Article.fromJSON(item)).toList();
      } else {
        throw Exception(
          'Gagal mengambil berita . '
          'Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception('Gagal mengambil data dari server: $e');
    }
  }
}
