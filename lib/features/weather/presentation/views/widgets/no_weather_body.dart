import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget{
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('There is No weather',
            style: TextStyle(
              fontSize: 24
              ),
            ),
            SizedBox(height: 10,),
            Text('Start Searching Now',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
    );
    
  }

}