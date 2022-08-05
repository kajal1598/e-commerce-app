import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:e-commerce-app/widgets/custom_icon_button.dart';
import 'package:e-commerce-app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                margin: getMargin(bottom: 26),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                  child: Container(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: double.infinity,
                                            decoration: AppDecoration
                                                .fillGray900
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBL20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 59,
                                                          right: 16),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgNotification,
                                                          height:
                                                              getSize(24.00),
                                                          width:
                                                              getSize(24.00))),
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapRowellipseone();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 43,
                                                                      right:
                                                                          237),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                12.00)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgEllipse1,
                                                                            height: getSize(24.00),
                                                                            width: getSize(24.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                3,
                                                                            bottom:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_hello_nirmala"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular14WhiteA700.copyWith()))
                                                                  ])))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  249.00),
                                                          margin: getMargin(
                                                              left: 16,
                                                              top: 16,
                                                              right: 110),
                                                          child: Text(
                                                              "msg_find_cool_produ"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterBold24
                                                                  .copyWith()))),
                                                  CustomSearchView(
                                                      width: 343,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .groupTwoController,
                                                      hintText:
                                                          "lbl_search_products"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 16,
                                                          top: 16,
                                                          right: 16),
                                                      alignment: Alignment
                                                          .center,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 21,
                                                              top: 13,
                                                              right: 12,
                                                              bottom: 13),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              minWidth: getSize(
                                                                  20.00),
                                                              minHeight:
                                                                  getSize(
                                                                      20.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 27,
                                                              right: 16,
                                                              bottom: 18),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapColumncar();
                                                                    },
                                                                    child:
                                                                        Container(
                                                                            child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                          CommonImageView(
                                                                              svgPath: ImageConstant.imgCar,
                                                                              height: getSize(52.00),
                                                                              width: getSize(52.00)),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Padding(padding: getPadding(left: 2, top: 8, right: 4), child: Text("lbl_hoodie".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterMedium14WhiteA700.copyWith())))
                                                                        ]))),
                                                                Container(
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              52,
                                                                          width:
                                                                              52,
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child:
                                                                              CommonImageView(svgPath: ImageConstant.imgBookmark)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  7,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  7),
                                                                          child: Text(
                                                                              "lbl_pants".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium14WhiteA700.copyWith()))
                                                                    ])),
                                                                Container(
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              52,
                                                                          width:
                                                                              52,
                                                                          child:
                                                                              CommonImageView(svgPath: ImageConstant.imgFlag)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  3,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "lbl_t_shirt".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium14WhiteA700.copyWith()))
                                                                    ])),
                                                                Container(
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              52,
                                                                          width:
                                                                              52,
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child:
                                                                              CommonImageView(svgPath: ImageConstant.imgBag)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  9),
                                                                          child: Text(
                                                                              "lbl_bags".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium14WhiteA700.copyWith()))
                                                                    ])),
                                                                Container(
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              52,
                                                                          width:
                                                                              52,
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child:
                                                                              CommonImageView(svgPath: ImageConstant.imgMenu)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  9),
                                                                          child: Text(
                                                                              "lbl_more".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium14WhiteA700.copyWith()))
                                                                    ]))
                                                              ])))
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 37, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("lbl_products_promo".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtInterBold16
                                                      .copyWith()),
                                              Text("lbl_see_all".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular16
                                                      .copyWith())
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 16, right: 15),
                                        child: Obx(() => GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent: getVerticalSize(
                                                        248.00),
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(
                                                            20.00),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(
                                                            20.00)),
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: controller.homeModelObj
                                                .value.homeItemList.length,
                                            itemBuilder: (context, index) {
                                              HomeItemModel model = controller
                                                  .homeModelObj
                                                  .value
                                                  .homeItemList[index];
                                              return HomeItemWidget(model,
                                                  onTapColumnwarmerssweater:
                                                      onTapColumnwarmerssweater);
                                            })))
                                  ])))))
                    ]))));
  }

  onTapColumnwarmerssweater() {
    Get.toNamed(AppRoutes.productSelectedScreen);
  }

  onTapRowellipseone() {
    Get.toNamed(AppRoutes.favoriteScreen);
  }

  onTapColumncar() {
    Get.toNamed(AppRoutes.favoriteOneScreen);
  }
}
