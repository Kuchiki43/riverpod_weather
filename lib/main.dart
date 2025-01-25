import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/const/route_list.dart';
import 'package:flutter_application_1/common/widget/navigation_widget.dart';
import 'package:flutter_application_1/features/theme/provider/theme_provider.dart';
import 'package:flutter_application_1/features/theme/provider/theme_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main(){
  runApp(ProviderScope(child: MyApp()));
}
class MyApp extends ConsumerWidget {
   MyApp({super.key});
  final _router = GoRouter(initialLocation: '/',routes: [
    StatefulShellRoute.indexedStack(
      builder: (context,routeState,shell){
        return NavigationWidget(shell: shell,);
      },
      branches: RouteList.routeList)
 

  ]);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WeatherThemeState weatherState = ref.watch(themeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme:weatherState.getTheme() ,
       routerConfig: _router ,
    );
  }


}

