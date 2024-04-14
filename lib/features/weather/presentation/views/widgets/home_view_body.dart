import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/weather/presentation/manager/cuibts/getWeatherCubit/get_weather_state.dart';
import 'package:weather_app/Features/weather/presentation/manager/cuibts/getWeatherCuibt/get_weather_cubit.dart';
import 'package:weather_app/Features/weather/presentation/views/widgets/no_weather_body.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/weather_Info_body.dart';


class HomeViewBody extends StatelessWidget{
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context,state){
          if (state is WeatherInitialState)
          {
            return const NoWeatherBody();
          }
          else if (state is WeatherLoadedState)
          {
            return  WeatherInfoBody();
          }
          else
          {
            return const Center(child: Text('There was an Error',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),

            ));
          }
        }
    );
  }
}