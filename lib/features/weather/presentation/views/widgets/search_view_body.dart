import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Features/weather/presentation/manager/cuibts/getWeatherCuibt/get_weather_cubit.dart';


class SearchViewBody extends StatelessWidget{
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: TextField(
          onSubmitted: (value) async{
            Navigator.of(context).pop();
            GetWeatherCubit getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 30,horizontal: 16),
            labelText: 'Search',
            hintText: 'Enter City Name',
            suffixIcon: Icon(Icons.search),
            suffixIconColor: Colors.black,
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
        ),
      ),
    );
  }
}