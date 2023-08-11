import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
  // const SearchPage({Key? key}) : super(key: key);
  String? citrange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: Center(
        child: TextField(
          onSubmitted: (value) async{
            citrange = value;
            WeatherService service = WeatherService();
            WeatherModel weather =await service.getWeather(cityName: citrange! ) ;
           /// service.getWeather(cityName: citrange!);
           /// 
           print(weather);
           print('sss');
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            labelText: 'Label Text',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: 'Search Page',
          ),
        ),
      ),
    );
  }
}
