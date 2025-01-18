

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/current_weather/data/model/current_weather_model.dart';
import 'package:flutter_application_1/features/current_weather/provider/current_weather_provider.dart';
import 'package:flutter_application_1/features/current_weather/provider/current_weather_state/current_weather_state.dart';
import 'package:flutter_application_1/features/current_weather/ui/widget/current_weather_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentWeatherScreen extends ConsumerStatefulWidget {
   CurrentWeatherScreen( {required this.longitude,required  this.latitude,required this.city});
  final String latitude;
  final String longitude;
  final String city;

  @override
  ConsumerState<CurrentWeatherScreen> createState() => _CitySearchScreenState();
}

class _CitySearchScreenState extends ConsumerState<CurrentWeatherScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getWeather();
  
  }
  @override
  Widget build(BuildContext context) {
    final currentWeatherState = ref.watch(currentWeatherProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          _weatherWidget(currentWeatherState),
          // SafeArea(
          //   child: IconButton(onPressed: (){
          //     Navigator.pop(context);
          //   }, icon: Icon(Icons.arrow_back_ios_new)),
          // )
        ],
      ),
    );
  }
  void _getWeather()async{
  await Future.delayed(Duration.zero);
  ref.read(currentWeatherProvider.notifier).getWeather(latitude: widget.latitude, longitude: widget.longitude);
  
}


Widget _weatherWidget(CurrentWeatherState currentWeatherState){
  return switch(currentWeatherState){
    CurrentWeatherLoadingState() => Center(child: CircularProgressIndicator(),),
    CurrentWeatherSuccessState(currentWeatherModel: CurrentWeatherModel current) => CurrentWeatherWidget(widget: widget, current: current)
    ,
    CurrentWeatherFailState(errorMessage: String error) => Center(child: Text('Something has error $error'),)
  };
}
}

