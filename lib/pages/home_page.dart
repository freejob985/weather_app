import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              })
        ],
        title: const Text('Weather App'),
      ),
      body: weatherData != null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'there is no weather 😔 start',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'searching now 🔍',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            )
          : Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Cairo ',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text('12-8-b20',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                           Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/clear.png'),
                      Text(
                        ' Cairo ',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),Text('maxTem'), Text('minTemp')
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [],
                  ),
                  Text(
                    'Clear',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
    );
  }
}
