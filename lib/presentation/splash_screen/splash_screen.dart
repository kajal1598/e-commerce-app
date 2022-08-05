import 'controller/splash_controller.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: GestureDetector(
                        onTap: () {
                          onTapSplash();
                        },
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 40,
                                          top: 40,
                                          right: 40,
                                          bottom: 20),
                                      child: CommonImageView(
                                          svgPath: ImageConstant
                                              .imgVectorDeepOrangeA200,
                                          height: getVerticalSize(82.00),
                                          width: getHorizontalSize(120.00))))
                            ])))))));
  }

  onTapSplash() {
    Get.toNamed(AppRoutes.signInOneScreen);
  }
}
