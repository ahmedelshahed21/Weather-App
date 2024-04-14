import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/weather/presentation/manager/cuibts/getWeatherCuibt/get_weather_cubit.dart';
import 'package:weather_app/core/helper/get_material_color.dart';


class WeatherInfoBody extends StatelessWidget{
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
  var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
  return  Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          getMaterialColor(weatherModel.weatherCondition),
          getMaterialColor(weatherModel.weatherCondition)[300]!,
          getMaterialColor(weatherModel.weatherCondition)[50]!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(weatherModel.cityName,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),

        ),
        Text('updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
          style: const TextStyle(
              fontSize: 25,
          ),

        ),
        const SizedBox(
          height: 32,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: NetworkImage('https:${weatherModel.image}')),
            Text(weatherModel.temp.toInt().toString(),
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Column(
              children: [
                Text("Max Temp : ${weatherModel.maxTemp.toInt()}",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text("Min Temp : ${weatherModel.minTemp.toInt()}",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
         Text(weatherModel.weatherCondition,
          style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),

      ],
    ),
  );
  }

}