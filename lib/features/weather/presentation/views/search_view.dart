import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/presentation/views/widgets/search_view_body.dart';


class SearchView extends StatelessWidget{
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
        elevation: 0,
      ),
      body: const SearchViewBody()
    );
  }
}