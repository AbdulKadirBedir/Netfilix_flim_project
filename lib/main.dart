import 'package:flutter/material.dart';
import 'package:flutter_film_project/routes/app_routes.dart';
import 'package:flutter_film_project/screen/login_screen.dart';
import 'package:flutter_film_project/service/app/app_provider.dart';
import 'package:flutter_film_project/signup/signup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: Core(),
      providers: AppProviders.providers);
  }
}
class Core extends StatelessWidget {
  Core({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.LoginRoute, 
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
  }
}



