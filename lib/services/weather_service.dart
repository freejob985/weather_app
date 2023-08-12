import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';
import 'dart:convert' as convert;

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'c534ba271dc14c09a3522956231108';
  
   Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url =
        Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');
    var response = await http.get(url);


  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    print('Number of books about http $jsonResponse');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }

   // http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
       WeatherModel weather = WeatherModel.fromJson(data);
    return weather;
  }
}
