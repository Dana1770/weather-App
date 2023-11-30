import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Cubits/getWeatherStates.dart';
import 'package:weather_app/models/weatherModel.dart';
import '../../Services/New_services.dart';
class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  IconData darkness=Icons.sunny;
  getWeather({required String cityName})async {
    try{
    weatherModel=(await WeatherService(Dio()).CurrentWeather(cityName: cityName))!;
   emit(WeatherLoadedState(weatherModel!));

    }on Exception catch(e){
    emit(WeatherFauilerState(e.toString()));
    }

  }

}