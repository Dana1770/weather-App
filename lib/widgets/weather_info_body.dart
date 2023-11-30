import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Cubits/get_weather_cubit/getWeatherCubit.dart';
import 'package:weather_app/models/weatherModel.dart';

import '../main.dart';
class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel=BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  // Colors.orange,
                  getThemeColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherCondition),
                  Colors.white,

                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
               weatherModel.cityName,
                style: const TextStyle(
                  color:  Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Text(
                'updated in ${weatherModel.date}',
                style: const TextStyle(
                  color:  Colors.black,

                  fontSize: 24,
                ),
              ),
              Text(
                'Time at ${(12-DateTime.now().hour).abs()}:${DateTime.now().minute}',
                style: const TextStyle(
                  color:  Colors.black,

                  fontSize: 24,
                ),
              ),
              Text(
                'sunrise at ${weatherModel.rtime}',
                style: const TextStyle(
                  color:  Colors.black,

                  fontSize: 15,
                ),
              ),
              Text(
                'sunset at ${weatherModel.stime}',
                style: const TextStyle(
                  color:  Colors.black,

                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  weatherModel.weatherCondition=='Overcast'?Lottie.asset('assets/images/Animation - 1701123850909.json',width: 110,height: 110)
                      : weatherModel.weatherCondition=='cloudy'?Lottie.asset('assets/images/Animation - 1701124162751.json',width: 110,height: 110)
                      :weatherModel.weatherCondition=='Snow, Partially cloudy'?Lottie.asset('assets/images/Animation - 1701185563210.json',width: 110,height: 110)
                      :weatherModel.weatherCondition=='Rain, Partially cloudy'?Lottie.asset('assets/images/Animation - 1701185911689.json',width: 110,height: 110)
                      :weatherModel.weatherCondition=='Snow, Rain, Partially cloudy'?Lottie.asset('assets/images/Animation - 1701277309621.json',width: 110,height: 110)
                      :weatherModel.weatherCondition=='Partially cloudy'?Lottie.asset('assets/images/Animation - 1701361896077.json',width: 110,height: 110)

                      :Lottie.asset('assets/images/Animation - 1701124552252.json',width: 110,height: 110),
                    Text(
                    '${weatherModel.temp}',
                    style: const TextStyle(
                      color:  Colors.black54,

                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                   Column(
                    children: [
                      Text(
                        'Maxtemp: ${weatherModel.maxTemp}',
                        style: const TextStyle(
                          color:  Colors.black,

                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Mintemp: ${weatherModel.minTemp}',
                        style: const TextStyle(
                          color:  Colors.black,

                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Pressure: ${weatherModel.pressure}',
                        style: const TextStyle(
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
               Text(
                weatherModel.weatherCondition,
                style: const TextStyle(
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
