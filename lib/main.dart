import 'package:flutter/material.dart';
import 'package:restaurantecofac/common/component/custom_test_form_field.dart';

void main() {
  runApp(_App());
}
// create a stateless widget

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            hintText: "이메일을 입력해 주세요",
            onChanged: (String value) {},
          ),
          // password field
          CustomTextFormField(
            hintText: "비밀번호를 입력해 주세요",
            obscureText: true,
            onChanged: (String value) {},
          ),
        ],
      )),
    );
  }
}
