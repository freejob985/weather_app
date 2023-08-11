import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'c534ba271dc14c09a3522956231108';
  void getWeather({required String cityName}) async {
    Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.get(url);

    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
  }
}
