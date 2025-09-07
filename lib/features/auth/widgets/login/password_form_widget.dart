import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class PasswordFormFieldLoginWidget extends StatelessWidget {
  const PasswordFormFieldLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (BuildContext context, AuthController provider, Widget? child) =>
          CustomTextFormField(
        hint: "Password",
        controller: provider.loginPasswordController,
        suffixIcon: provider.obSucureloginPassword
            ? const Icon(Icons.visibility_sharp)
            : const Icon(Icons.visibility_off),
        showSuffixIcon: true,
        obsucreText: provider.obSucureloginPassword,
        onTapSuffixIcon: () => provider.changeloginPasswordObSucure(),
        validator: (password) {
          if (password == null || password.isEmpty) {
            return 'Enter a valid password!';
          }
          return null;
        },
      ),
    );
  }
}
