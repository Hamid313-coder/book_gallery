import 'dart:convert';

import 'package:book_gallery/models/book.dart';
import 'package:http/http.dart' as http;
import 'package:book_gallery/services/constants/endpoints.dart';

class RequestHelper {
  RequestHelper._();

  static Future<List<Book>> getBooks() async {
    try {
      final url =
          Uri.https(Endpoints.baseUrl, Endpoints.books, {"q": "a+terms"});
      final response = await http.get(url);

      if (response.statusCode != 200) {
        throw Exception("Could not get books!");
      }

      final jsonList = jsonDecode(response.body)["items"] as List;
      return jsonList.map((json) => Book.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
