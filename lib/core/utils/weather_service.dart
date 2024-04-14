import 'package:dio/dio.dart';
import 'package:weather_app/Features/weather/data/models/weather_model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = 'f272a6f08ab44537bb7183830232212';
  Dio dio;
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName})async{
    try{
      var response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');
      WeatherModel json=WeatherModel.fromjson(response.data);
      return json;
    }on DioException catch(e)
    {
      final String errorMessage=e.response?.data['error']['message']??"there was an error , try later";
      throw Exception(errorMessage);
    }catch(e)
    {
      throw Exception('there was an error , try later');
    }
  }

}