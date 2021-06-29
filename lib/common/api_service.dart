import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data/joke.dart';
import 'common.dart';

class APIService {
  static const String _baseUrl = 'dad-jokes.p.rapidapi.com';
  static const Map<String, String> _headers = {
    'x-rapidapi-host': 'dad-jokes.p.rapidapi.com',
    'x-rapidapi-key': apiKey,
  };

  static Future<Map<String, dynamic>> get({
    required String endpoint,
  }) async {
    final uri = Uri.https(_baseUrl, endpoint);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception('Failed to load json data');
    }
  }

  static Future<Map<String, dynamic>> getFakeData({
    required String endpoint,
  }) async {
    return exampleResponse;
  }
}
