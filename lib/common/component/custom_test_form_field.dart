import 'package:flutter/material.dart';
import 'package:restaurantecofac/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    required this.onChanged,
    this.autofocus = false,
    this.obscureText = false,
    this.hintText,
    this.errorText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var baseBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: INPUT_BORDER_COLOR,
        width: 1.0,
      ),
    );
    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        // hintText의 색상을 BODY_TEXT_COLOR로 설정하고 fontSize를 14로 설정한다
        hintStyle: const TextStyle(
          color: BODY_TEXT_COLOR,
          fontSize: 14,
        ),
        // Background Color of TextFormField Container set to BODY_TEXT_COLOR
        fillColor: INPUT_BG_COLOR,
        filled: true,
        // input border를 테두리로 두르고 색상을 INPUT_BORDER_COLOR로 설정한다
        border: baseBorder,
        // TextFormField를 선택했을 때 테두리 색상을 PRIMARY_COLOR로 설정한다
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: PRIMARY_COLOR,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
