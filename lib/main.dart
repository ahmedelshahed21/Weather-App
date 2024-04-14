import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/weather/presentation/manager/cuibts/getWeatherCubit/get_weather_state.dart';
import 'package:weather_app/Features/weather/presentation/manager/cuibts/getWeatherCuibt/get_weather_cubit.dart';
import 'package:weather_app/Features/weather/presentation/views/home_view.dart';
import 'package:weather_app/core/helper/get_material_color.dart';

void main() {
  runApp(const WeatherApp());
}
class WeatherApp extends StatelessWidget{
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit,WeatherState>(
          builder: (context,state) => MaterialApp(
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: getMaterialColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherCondition)
                ),
                primarySwatch: getMaterialColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherCondition),
              ),
            home: const HomeView(),
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}






