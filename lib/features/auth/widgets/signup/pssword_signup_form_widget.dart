import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class PasswordFormFieldSingupWidget extends StatelessWidget {
  const PasswordFormFieldSingupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (BuildContext context, AuthController provider, Widget? child) =>
          CustomTextFormField(
        hint: "Password",
        controller: provider.signupPasswordController,
        suffixIcon: provider.obSucurePassword
            ? const Icon(Icons.visibility_sharp)
            : const Icon(Icons.visibility_off),
        showSuffixIcon: true,
        onTapSuffixIcon: () => provider.changePassordObSucure(),
        obsucreText: provider.obSucurePassword,
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
