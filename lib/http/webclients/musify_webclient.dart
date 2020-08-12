import 'dart:convert';
import 'package:http/http.dart';
import 'package:nlw_flutter/http/webclient.dart';

class MusifyWebClient {
  static const String baseUrl = 'https://nlw-musify-server.herokuapp.com';

  Future<dynamic> connections() async {
    final Response response = await client.get('$baseUrl/connections');
    final Map<String, dynamic> decodedJson = jsonDecode(response.body);

    return decodedJson;
  }
}
