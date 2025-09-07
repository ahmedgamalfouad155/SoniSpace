import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final Icon? suffixIcon;
  final bool obsucreText;
  final bool showSuffixIcon;
  final Function()? onTapSuffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Color colorBorder;

  const CustomTextFormField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.validator,
    this.obsucreText = false,
    this.showSuffixIcon = false,
    this.suffixIcon,
    this.onTapSuffixIcon,
    this.contentPadding,
    this.colorBorder = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsucreText ,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        suffixIcon: showSuffixIcon
            ? IconButton(
                icon: suffixIcon!,
                onPressed: onTapSuffixIcon,
              )
            : null,
        suffixIconColor: AppColors.white,
        fillColor: Colors.transparent,
        focusColor: AppColors.white,
        iconColor: AppColors.white,
        hintText: hint,
        hintStyle: const TextStyle(
          color: AppColors.greySearch,
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: outLintborder(colorBorder, 3),
        focusedBorder: outLintborder(colorBorder, 3),
        errorBorder: outLintborder(Colors.red, .5),
        focusedErrorBorder: outLintborder(Colors.red, .5),
      ),
    );
  }
}

OutlineInputBorder outLintborder(Color color, double width) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(color: color, width: width),
  );
}
