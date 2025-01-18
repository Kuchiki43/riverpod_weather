import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/current_weather/ui/screen/current_weather_screen.dart';
import 'package:flutter_application_1/features/search_city/ui/screen/city_search_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main(){
  runApp(ProviderScope(child: MyApp()));
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
  final _router = GoRouter(routes: [
    GoRoute(path: '/',
    builder: (context,routeState){
      return CitySearchScreen();
    }
    ),
    GoRoute(path: '/current',
    builder: (context, routeState){
      final query = routeState.extra as Map;
      return CurrentWeatherScreen(longitude: query['longi']! ,latitude: query['lati']!,city: query['city'],);
    },
    )


  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       routerConfig: _router ,
    );
  }
}