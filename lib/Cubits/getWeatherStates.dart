import 'package:weather_app/models/weatherModel.dart';

class WeatherState{}
class WeatherInitialState extends WeatherState{}
class NoWeatherState extends WeatherState{}
class WeatherLoadedState extends WeatherState{
  final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}
class WeatherFauilerState extends WeatherState{
  final String error;
  WeatherFauilerState( this.error);
}
