import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/getWeatherStates.dart';
import 'package:weather_app/Cubits/get_weather_cubit/getWeatherCubit.dart';
import 'package:weather_app/splashScreen/splash.dart';
void main() {
  runApp(const WeatherApp());
}
class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>GetWeatherCubit(),
      child: Builder (
        builder: (context) {
          return BlocBuilder<GetWeatherCubit,WeatherState>(
  builder: (context, state) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const Splach(),
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                color: getThemeColor(BlocProvider.of<GetWeatherCubit>(context).weatherModel?.weatherCondition),
              ),
            ),
          );
  },
);
        }
      ),
    );
  }
}
MaterialColor getThemeColor(String? condition){
  MaterialColor c;
  if(condition==null){
    c=Colors.brown;
  }
  c= condition=='Overcast'?Colors.yellow
      :condition=='cloudy'?Colors.grey
      :condition=='Clear'?Colors.green
      :condition=='Partially cloudy'?Colors.teal
      :condition=='Snow, Partially cloudy'?Colors.cyan
      :condition=='Rain, Partially cloudy'?Colors.indigo
      :condition=='Snow, Rain, Partially cloudy'?Colors.blue
      :Colors.brown;
  print(c);
  return c;

}
