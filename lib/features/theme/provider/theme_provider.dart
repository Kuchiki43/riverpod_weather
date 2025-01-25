import 'package:flutter_application_1/features/theme/provider/theme_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends Notifier<WeatherThemeState>{
  WeatherThemeState _weatherState = LightTheme();
  @override
  build() {
    return _weatherState;
  }
  void changeTheme( WeatherThemeState weatherState){
    state = weatherState;
  }
}
NotifierProvider<ThemeNotifier,WeatherThemeState> themeProvider= NotifierProvider((){
  return ThemeNotifier();
});