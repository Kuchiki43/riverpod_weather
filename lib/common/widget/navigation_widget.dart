import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationWidget extends StatelessWidget {
    final  StatefulNavigationShell shell;
  const NavigationWidget({
    super.key, required this.shell,

  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= 500) {
      return Scaffold(
      body: shell,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index){
          shell.goBranch(index);
        },
        selectedIndex: shell.currentIndex,
    
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Setting')
        ]),
    );
    }
    else{
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: (index) {
                shell.goBranch(index);
              },
              destinations: [
              NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
              NavigationRailDestination(icon: Icon(Icons.settings), label: Text('Setting'))
            ], selectedIndex: shell.currentIndex),
            Expanded(child: shell)
          ],
  
        ),
      );
    }
  }
}