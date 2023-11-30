import 'package:intl/intl.dart';

class WeatherModel{
  final String cityName;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  final double pressure;
  final String rtime;
  final String stime;
  final String date;

  WeatherModel({
    required this.date,
    required this.rtime,
    required this.stime,
    required this.cityName,
    this.image,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCondition,
    required this.pressure});


  factory WeatherModel.fromJson(json){

    return WeatherModel(
        cityName: json['address'],
        temp: json['days'][0]['temp'],
        maxTemp: json['days'][0]['tempmax'],
        minTemp: json['days'][0]['tempmin'],
        weatherCondition: json['days'][0]['conditions'],
        pressure:  json['days'][0]['pressure'],
        date:  json['days'][0]['datetime'],
        rtime: json['days'][0]['sunrise'],
        stime: json['days'][0]['sunset'],
      image:json['days'][0]['icon'],
    );
  }
}