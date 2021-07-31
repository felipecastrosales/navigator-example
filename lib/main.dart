import 'package:flutter/material.dart';

import '/configs/configure_nonweb.dart' 
    if (dart.library.html) '/configs/configure_web.dart';
import '/screens/any_screen.dart';
import '/screens/details_screen.dart';
import '/screens/home_screen.dart';

void main() {
  configureApp();
  runApp(NavApp());
}
class NavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => HomeScreen(),
          );
        }
        var uri = Uri.parse(settings.name!);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'details'
        ) {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(
            builder: (context) => DetailsScreen(id: id),
          );
        }
        return MaterialPageRoute(
          builder: (context) => AnyScreen(),
        );
      },
    );
  }
}
