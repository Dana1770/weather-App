import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weatherModel.dart';

class WeatherService{
  final Dio dio;
  final String baseUrl='weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline';
  final apiKey='DUZTG8ZJ5YK4QYHX954AWPDBD';
  WeatherService(this.dio);
 Future<WeatherModel?>  CurrentWeather({required String cityName})async{
try{
  Response response=await dio.get('https://$baseUrl/$cityName?unitGroup=metric&include=current&key=$apiKey');

  WeatherModel weatherModel=WeatherModel.fromJson(response.data);
  return weatherModel;

}
on DioException catch(e){
  final String errorMessage=e.response?.data['error']['message']??'Opps,there was an error,Try later😥';
throw Exception(errorMessage);
}catch(e){
  log(e.toString());
  throw Exception('Opps,there was an error,try later😥');

}







}
}