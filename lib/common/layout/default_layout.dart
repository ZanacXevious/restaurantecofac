// material package import
import 'package:flutter/material.dart';

// StatelessWidget을 상속받는 DefaultLayout class를 만들어주세요
class DefaultLayout extends StatelessWidget {
  final Widget child;

  // DefaultLayout의 생성자를 만들어주세요
  DefaultLayout({
    required this.child,
    Key? key,
  }) : super(key: key);
  // build method를 override 해주세요
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
    );
  }
}
