import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_text_form_field.dart';
import 'package:sonispace/features/auth/view_model/auth_controller.dart';

class ConfirmPasswordFormFieldSignupWidget extends StatelessWidget {
  const ConfirmPasswordFormFieldSignupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (BuildContext context, AuthController provider, Widget? child) =>
          CustomTextFormField(
        hint: "Confirm Password",
        controller: provider.confirmPasswordController,
        suffixIcon: provider.obSucureConfirmPassword
            ? const Icon(Icons.visibility_sharp)
            : const Icon(Icons.visibility_off),
        showSuffixIcon: true,
        obsucreText: provider.obSucureConfirmPassword,
        onTapSuffixIcon: () => provider.changeConfirmPasswordObSucure(),
        validator: (confirm) {
          if (confirm == null || confirm.isEmpty) {
            return 'Enter a valid password!';
          }
          return null;
        },
      ),
    );
  }
}
