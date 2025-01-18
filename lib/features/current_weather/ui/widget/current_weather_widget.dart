import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/current_weather/data/model/current_weather_model.dart';
import 'package:flutter_application_1/features/current_weather/ui/screen/current_weather_screen.dart';

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({
    super.key,
    required this.widget,
    required this.current,
  });

  final CurrentWeatherScreen widget;
  final CurrentWeatherModel current;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:double.infinity ,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff5C6BC0),Color(0xff3949AB),Color(0xff283593),
    
        ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${widget.city}',style: TextStyle(color: Colors.white ,fontSize: 34,fontWeight: FontWeight.bold),),
           SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('${current.currentWeather?.weathercode?.toCondition.toEmoji}',style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold)),
    
              Text('${current.currentWeather?.weathercode?.toCondition ?? ''}',style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold)),
        
              Text('${current.currentWeather?.temperature ?? ''} C ',style: TextStyle(color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold),),
              
            ],
          )
        ],
      ),
    );
  }
}
extension on int {
  String get toCondition {
    switch (this) {
      case 0:
        return 'Clear';
      case 1:
      case 2:
      case 3:
      case 45:
      case 48:
        return 'Cloudy';
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
      case 80:
      case 81:
      case 82:
      case 95:
      case 96:
      case 99:
        return 'Rainy';
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return 'Snowy';
      default:
        return 'Unknown';
    }
  }
}
extension on String {
  String get toEmoji {
    switch (this) {
      case 'Clear':
        return '☀️';
      case 'Rainy':
        return '🌧️';
      case 'Cloudy':
        return '☁️';
      case 'Snowy':
        return '🌨️';
      case 'Unknown':
        return '❓';
        default :
        return 'Unknown';
    }
  }
}