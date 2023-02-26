import 'package:flutter/material.dart';
import 'package:restaurantecofac/common/component/custom_test_form_field.dart';
import 'package:restaurantecofac/common/user/view/login_screen.dart';
import 'package:restaurantecofac/common/view/splash_screen.dart';

void main() {
  runApp(_App());
}
// create a stateless widget

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'NotoSans'),
      // remove debug banner
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
