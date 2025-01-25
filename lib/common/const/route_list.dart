import 'package:flutter_application_1/features/current_weather/ui/screen/current_weather_screen.dart';
import 'package:flutter_application_1/features/search_city/ui/screen/city_search_screen.dart';
import 'package:flutter_application_1/features/setting/setting_screen.dart';
import 'package:go_router/go_router.dart';

class RouteList {
  static final routeList = [
        StatefulShellBranch(routes: [
    GoRoute(path: '/',
    builder: (context,routeState){
      return CitySearchScreen();
    }
    ),
    GoRoute(path: '/current/:lati/:longi/:city',
    builder: (context, routeState){
      return CurrentWeatherScreen(longitude:routeState.pathParameters['lati'] ?? '',latitude: routeState.pathParameters['longi'] ?? '',city: routeState.pathParameters['city'] ?? '');
    },
    )

        ]),
        StatefulShellBranch(routes: [
          GoRoute(path: '/setting',
          builder: (context,routeState){
            return SettingScreen();
          }
          )
        ])

      ];
}