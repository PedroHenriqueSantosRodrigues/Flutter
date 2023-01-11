import 'package:flutter/material.dart';
import 'package:terceirodia/app_controller.dart';
import 'package:terceirodia/login_page.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.amber,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            home: LoginPage());
      },
    );
  }
}
