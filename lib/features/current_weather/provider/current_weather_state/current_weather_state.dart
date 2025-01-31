import 'package:flutter_application_1/features/current_weather/data/model/current_weather_model.dart';

sealed class CurrentWeatherState {}

class CurrentWeatherLoadingState extends CurrentWeatherState{}

class CurrentWeatherSuccessState extends CurrentWeatherState{
  final CurrentWeatherModel currentWeatherModel ;
  CurrentWeatherSuccessState({required this.currentWeatherModel});
}

class CurrentWeatherFailState extends CurrentWeatherState{
 final String errorMessage;
  CurrentWeatherFailState({required this.errorMessage});
}