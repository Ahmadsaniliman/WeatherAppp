import 'dart:convert';
import 'package:http/http.dart';
import 'package:new_weather_appppppp/Model/weather_model.dart';

class Network {
  Future<WeatherModel> getWeatherInfo({required String cityName}) async {
    var finalUrl =
        'https://api.weatherapi.com/v1/forecast.json?key=5e8d1777bb5543cca1c194744222206&q=' +
            cityName +
            '&days=1&aqi=no&alerts=no';
    final response = await get(
      Uri.parse(
        Uri.encodeFull(finalUrl),
      ),
    );
    if (response.statusCode == 200) {
      return WeatherModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Something went wrong');
    }
  }
}
