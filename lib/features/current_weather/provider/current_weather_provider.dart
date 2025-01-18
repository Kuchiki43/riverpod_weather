
import 'package:flutter_application_1/common/providers/dio/dio_provider.dart';
import 'package:flutter_application_1/features/current_weather/data/model/current_weather_model.dart';
import 'package:flutter_application_1/features/current_weather/data/service/current_weather_service.dart';
import 'package:flutter_application_1/features/current_weather/provider/current_weather_state/current_weather_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

class CurrentWeatherProvider extends Notifier<CurrentWeatherState> {
  final CurrentWeatherState _currentWeatherState = CurrentWeatherLoadingState();
  @override
  CurrentWeatherState build() {
    return _currentWeatherState;
  }
  void getWeather({required String latitude,required String longitude})async{
    try{ state = CurrentWeatherLoadingState();
     late final Dio dio = ref.read(dioProvider);

    CurrentWeatherService currentWeatherService = CurrentWeatherService(dio);
    CurrentWeatherModel currentWeatherModel =  await currentWeatherService.getCurrentWeather(latitude: latitude, longitude: longitude, currentWeather: true);
    state = CurrentWeatherSuccessState(currentWeatherModel: currentWeatherModel);
  }
  catch(e){
    state = CurrentWeatherFailState(errorMessage: (e.toString()));
  }
  }
}
final currentWeatherProvider = NotifierProvider<CurrentWeatherProvider,CurrentWeatherState> (()=> CurrentWeatherProvider());