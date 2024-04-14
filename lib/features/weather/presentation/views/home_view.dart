import 'package:flutter/material.dart';
import 'package:weather_app/Features/weather/presentation/views/search_view.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/home_view_body.dart';


class HomeView extends StatelessWidget{
   const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        title: const Text('Weather App'),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const SearchView()
                  ));
          },
              icon: const Icon(Icons.search))
        ],
      ),
      body: HomeViewBody()
    );
  }
}