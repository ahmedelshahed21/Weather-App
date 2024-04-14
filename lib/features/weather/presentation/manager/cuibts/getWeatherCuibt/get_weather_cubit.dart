import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/Features/weather/data/models/weather_model.dart';
import 'package:weather_app/Features/weather/presentation/manager/cuibts/getWeatherCubit/get_weather_state.dart';
import 'package:weather_app/core/utils/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit():super(WeatherInitialState());

  WeatherModel? weatherModel;
  getWeather ({required String cityName})async
  {
    try{
      weatherModel = await  WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState());
    }catch(e)
    {
      emit(WeatherFailureState());
    }
  }

}