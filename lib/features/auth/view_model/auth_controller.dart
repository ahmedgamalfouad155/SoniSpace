import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  TextEditingController usernameController = TextEditingController();
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  bool isBliend = true;
  bool obSucurePassword = true;
  bool obSucureConfirmPassword = true;
  bool obSucureloginPassword = true;

  void changePassordObSucure() {
    obSucurePassword = !obSucurePassword;
    notifyListeners();
  }

  void changeConfirmPasswordObSucure() {
    obSucureConfirmPassword = !obSucureConfirmPassword;
    notifyListeners();
  }

  void changeloginPasswordObSucure() {
    obSucureloginPassword = !obSucureloginPassword;
    notifyListeners();
  }

  void changeHumanStatue() {
    isBliend = !isBliend;
    notifyListeners();
  }

  @override
  void dispose() {
    usernameController.dispose();
    signupEmailController.dispose();
    signupPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void changeTextEditControllerToEmpty() {
    usernameController.clear();
    signupEmailController.clear();
    signupPasswordController.clear();
    confirmPasswordController.clear();

    loginEmailController.clear();
    loginPasswordController.clear();
  }
}
