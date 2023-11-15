import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.white,
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Alexandria',
                style: TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              const Text(
                'updated at 23:46',
                style: TextStyle(
                  color:  Colors.black,

                  fontSize: 24,
                ),
              ),
              const Text(
                'sunrise',
                style: TextStyle(
                  color:  Colors.black,

                  fontSize: 24,
                ),
              ),
              const Text(
                'sunset',
                style: TextStyle(
                  color:  Colors.black,

                  fontSize: 24,
                ),
              ),

              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/cloudy.png',
                  ),
                  const Text(
                    '17',
                    style: TextStyle(
                      color:  Colors.black,

                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        'Maxtemp: 24',
                        style: TextStyle(
                          color:  Colors.black,

                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Mintemp: 16',
                        style: TextStyle(
                          color:  Colors.black,

                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Pressure: 1608',
                        style: TextStyle(
                          color:  Colors.black,

                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(

                'Ligh Rain',
                style: TextStyle(
                  color:  Colors.black,

                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
