import 'package:cooe_games/res/app_constant.dart';
import 'package:cooe_games/utils/routes/routes.dart';
import 'package:cooe_games/utils/routes/routes_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=kIsWeb?400:MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: (settings) {
        if (settings.name != null) {
          return MaterialPageRoute(
            builder: Routers.generateRoute(settings.name!),
            settings: settings,
          );
        }
        return null;
      },
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

double height=0.0;
double width=0.0;
