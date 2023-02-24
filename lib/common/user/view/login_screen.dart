//material package를 import 해주세요
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restaurantecofac/common/const/colors.dart';
import 'package:restaurantecofac/common/layout/default_layout.dart';

import '../../component/custom_test_form_field.dart';
import '../../view/root_tab.dart';

// StatelessWidget을 상속하는 LoginScreen class를 만들어주세요
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';
  // build method를 override 해주세요
  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    // localhost emulator
    final emulatorIp = '10.0.2.2:3000';
    final simulatorIP = '127.0.0.1:3000';
    final ip = Platform.isIOS ? simulatorIP : emulatorIp;

    return DefaultLayout(
        child: SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Title(),
              const SizedBox(height: 16),
              _SubTitle(),
              Image.asset(
                "asset/img/misc/logo.png",
                width: MediaQuery.of(context).size.width / 3 * 2,
              ),

              CustomTextFormField(
                hintText: "이메일을 입력해 주세요",
                onChanged: (String value) {
                  username = value;
                },
              ),
              const SizedBox(height: 16),
              // password field
              CustomTextFormField(
                hintText: "비밀번호를 입력해 주세요",
                obscureText: true,
                onChanged: (String value) {
                  password = value;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () async {
                    // ID:비밀번호
                    final rawString = '$username:$password';

                    Codec<String, String> stringToBase64 = utf8.fuse(base64);

                    String token = stringToBase64.encode(rawString);

                    final resp = await dio.post(
                      'http://$ip/auth/login',
                      options: Options(
                        headers: {
                          'authorization': 'Basic $token',
                        },
                      ),
                    );

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => RootTab(),
                      ),
                    );

                    print(resp.data);
                  },
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
        ),
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

//post commit 테스트
