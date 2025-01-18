
import 'package:flutter_application_1/common/const/api_const.dart';
import 'package:flutter_application_1/features/current_weather/data/model/current_weather_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'current_weather_service.g.dart';
@RestApi(baseUrl: ApiConst.weatherBaseUrl)
 abstract class CurrentWeatherService {
  factory CurrentWeatherService(Dio dio) => _CurrentWeatherService(dio);

  @GET(ApiConst.forecastEndPoint)
   Future<CurrentWeatherModel> getCurrentWeather({
    @Query('latitude') required String latitude,
    @Query('longitude') required String longitude,
    @Query('current_weather') required bool currentWeather,

   });
 } 
  
 

