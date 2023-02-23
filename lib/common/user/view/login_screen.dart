//material package를 import 해주세요
import 'package:flutter/material.dart';
import 'package:restaurantecofac/common/const/colors.dart';
import 'package:restaurantecofac/common/layout/default_layout.dart';

import '../../component/custom_test_form_field.dart';

// StatelessWidget을 상속하는 LoginScreen class를 만들어주세요
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // build method를 override 해주세요
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        child: SafeArea(
      top: true,
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _Title(),
          _SubTitle(),
          Image.asset(
            "asset/img/misc/logo.png",
            width: MediaQuery.of(context).size.width / 3 * 2,
          ),

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
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: PRIMARY_COLOR,
              ),
              child: const Text("로그인")),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(primary: Colors.black),
              child: const Text("회원가입")),
        ],
      ),
    ));
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "환영합니다",
      style: TextStyle(
          fontSize: 34, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}

// StatelessWidget을 상속하는 _SubTitle class를 만들어주세요
class _SubTitle extends StatelessWidget {
  // build method를 override 해주세요
  @override
  Widget build(BuildContext context) {
    return const Text(
      "이메일과 비밀번호를 입력해서 로그인 해주세요! \n 오늘도 성공적인 주문이 되길 :)",
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: BODY_TEXT_COLOR),
    );
  }
}
