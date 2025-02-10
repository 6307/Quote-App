// lib/app/data/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Model/quotesModel.dart';

class ApiService {
  static const String _baseUrl = "https://api.adviceslip.com/advice";

  static Future<QuoteModel?> fetchRandomQuote() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return QuoteModel.fromJson(data);
      } else {
        throw Exception("Failed to load quote");
      }
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }
}
