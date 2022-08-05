import 'controller/sign_in_controller.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:e-commerce-app/core/utils/validation_functions.dart';
import 'package:e-commerce-app/widgets/custom_button.dart';
import 'package:e-commerce-app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:e-commerce-app/domain/googleauth/google_auth_helper.dart';
import 'package:e-commerce-app/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    margin: getMargin(left: 16, top: 71, right: 15, bottom: 40),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SingleChildScrollView(
                                      child: Container(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 1, right: 10),
                                            child: Text("lbl_sign_up".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold24Bluegray800
                                                    .copyWith())),
                                        Container(
                                            width: getHorizontalSize(236.00),
                                            margin: getMargin(
                                                left: 1, top: 8, right: 10),
                                            child: Text("msg_hello_just_sig".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterMedium14
                                                    .copyWith())),
                                        Padding(
                                            padding:
                                                getPadding(top: 23, right: 10),
                                            child: Text("lbl_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 343,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.groupTwoController,
                                            hintText: "lbl_enter_your_name".tr,
                                            margin: getMargin(top: 8, right: 1),
                                            alignment: Alignment.center,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 21,
                                                    top: 13,
                                                    right: 12,
                                                    bottom: 13),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgUser)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(20.00),
                                                minHeight: getSize(20.00)),
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 24, right: 10),
                                            child: Text("lbl_email_address".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 343,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .groupTwoOneController,
                                            hintText: "msg_enter_your_emai".tr,
                                            margin: getMargin(left: 1, top: 8),
                                            alignment: Alignment.center,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 21,
                                                    top: 13,
                                                    right: 12,
                                                    bottom: 13),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgMail)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(20.00),
                                                minHeight: getSize(20.00)),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "Please enter valid email";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(top: 24, right: 10),
                                            child: Text("lbl_password".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtInterBold14
                                                    .copyWith())),
                                        CustomTextFormField(
                                            width: 343,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .groupTwoTwoController,
                                            hintText: "msg_enter_your_pass".tr,
                                            margin: getMargin(top: 8, right: 1),
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 21,
                                                    top: 13,
                                                    right: 12,
                                                    bottom: 13),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgLock)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(20.00),
                                                minHeight: getSize(20.00)),
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 13,
                                                    right: 20,
                                                    bottom: 13),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgEye)),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(20.00),
                                                minHeight:
                                                    getVerticalSize(20.00)),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            isObscureText: true),
                                        CustomButton(
                                            width: 342,
                                            text: "lbl_log_in".tr,
                                            margin: getMargin(
                                                left: 1, top: 40, right: 1),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 43, right: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  116.00),
                                                          margin: getMargin(
                                                              top: 9,
                                                              bottom: 7),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray400)),
                                                      Text(
                                                          "lbl_or_log_in_with"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14Gray400
                                                              .copyWith()),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  116.00),
                                                          margin: getMargin(
                                                              top: 9,
                                                              bottom: 7),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray400))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(342.00),
                                                margin: getMargin(
                                                    left: 1, top: 40, right: 1),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 40,
                                                                      top: 17,
                                                                      right: 40,
                                                                      bottom:
                                                                          16),
                                                              child: Text(
                                                                  "lbl_log_in"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterSemiBold14
                                                                      .copyWith()))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: GestureDetector(
                                                              onTap: () {
                                                                onTapRowgoogleone();
                                                              },
                                                              child: Container(
                                                                  decoration: AppDecoration.outlineGray400.copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                20,
                                                                            top:
                                                                                15,
                                                                            bottom:
                                                                                15),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgGoogle1,
                                                                            height: getSize(20.00),
                                                                            width: getSize(20.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                67,
                                                                            top:
                                                                                17,
                                                                            right:
                                                                                112,
                                                                            bottom:
                                                                                16),
                                                                        child: Text(
                                                                            "msg_log_in_with_goo"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterSemiBold14Bluegray800.copyWith()))
                                                                  ]))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapRowpngwingfiftyone();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 1,
                                                        top: 20,
                                                        right: 1),
                                                    decoration: AppDecoration
                                                        .outlineGray400
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder25),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 14,
                                                                      bottom:
                                                                          16),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPngwing51,
                                                                  height:
                                                                      getSize(
                                                                          20.00),
                                                                  width: getSize(
                                                                      20.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 58,
                                                                      top: 17,
                                                                      right:
                                                                          102,
                                                                      bottom:
                                                                          16),
                                                              child: Text(
                                                                  "msg_log_in_with_fac"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterSemiBold14Bluegray800
                                                                      .copyWith()))
                                                        ])))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtDonthaveacco();
                                                },
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 76,
                                                        top: 40,
                                                        right: 76),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "msg_don_t_have_acco2"
                                                                      .tr,
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray200,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          TextSpan(
                                                              text: ' ',
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .black900,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_sign_in"
                                                                      .tr,
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .deepOrangeA200,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))))
                                      ])))))
                        ])))));
  }

  onTapRowgoogleone() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowpngwingfiftyone() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveacco() {
    Get.toNamed(AppRoutes.signInOneScreen);
  }
}
