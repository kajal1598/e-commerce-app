import '/core/app_export.dart';
import 'package:e-commerce-app/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController groupTwoController = TextEditingController();

  TextEditingController groupTwoOneController = TextEditingController();

  TextEditingController groupTwoTwoController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwoController.dispose();
    groupTwoOneController.dispose();
    groupTwoTwoController.dispose();
  }
}
