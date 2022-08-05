import '/core/app_export.dart';
import 'package:e-commerce-app/presentation/sign_in_one_screen/models/sign_in_one_model.dart';
import 'package:flutter/material.dart';

class SignInOneController extends GetxController {
  TextEditingController groupTwoController1 = TextEditingController();

  TextEditingController groupTwoOneController1 = TextEditingController();

  Rx<SignInOneModel> signInOneModelObj = SignInOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwoController1.dispose();
    groupTwoOneController1.dispose();
  }
}
