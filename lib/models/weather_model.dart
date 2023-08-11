// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeatherModel {
  DateTime date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;
  WeatherModel({
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherStateName,
  });

  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];

    return WeatherModel(
        date: DateTime.parse(data['current']['last_updated']),
        temp: jsonData['avgtemp_c'],
        maxTemp: jsonData['maxtemp_c'],
        minTemp: jsonData['mintemp_c'],
        weatherStateName: jsonData['condition']['text']);
  }
    String toString() {
    return 'tem = $temp  minTemp = $minTemp  date = $date';
  }


}
