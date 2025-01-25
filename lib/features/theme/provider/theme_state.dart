import 'package:flutter/material.dart';

sealed class WeatherThemeState{
   ThemeData getTheme();
}
class LightTheme extends WeatherThemeState{
  @override
  ThemeData getTheme() {
    return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.cyan,
      ),
      navigationRailTheme: NavigationRailThemeData(
         unselectedLabelTextStyle: TextStyle(color: Colors.indigo),
         selectedLabelTextStyle: TextStyle(color: Colors.indigo,fontSize: 17),
         unselectedIconTheme: IconThemeData(
          color: Colors.indigo
         ),
         selectedIconTheme: IconThemeData(
          color: Colors.indigo,size: 30,
         )
      )
    );
  
  }

}
class DarkTheme extends WeatherThemeState{
  @override
  ThemeData getTheme() {
     return ThemeData.dark().copyWith(
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((value){
          return Colors.white;
        }),
        trackColor: WidgetStateProperty.resolveWith((value){
          return Colors.grey;
        })

      ),
      navigationRailTheme: NavigationRailThemeData(
        unselectedLabelTextStyle: TextStyle(
          color: Colors.grey,
        ),
        selectedLabelTextStyle: TextStyle(
          color: Colors.white,fontSize: 17
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,

        ),
        selectedIconTheme: IconThemeData(
          color: Colors.white,size: 30,
        )
    
      )

    );
  }

} 