import '../favorite_one_screen/widgets/favorite_one_item_widget.dart';
import 'controller/favorite_one_controller.dart';
import 'models/favorite_one_item_model.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:e-commerce-app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FavoriteOneScreen extends GetWidget<FavoriteOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
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
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        decoration: AppDecoration.fillGray900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderBL20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomIconButton(
                                                  height: 40,
                                                  width: 40,
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 42,
                                                      bottom: 56),
                                                  shape: IconButtonShape
                                                      .RoundedBorder10,
                                                  onTap: () {
                                                    onTapBtntf();
                                                  },
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 84,
                                                      top: 48,
                                                      right: 139,
                                                      bottom: 61),
                                                  child: Text("lbl_favorite".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold24
                                                          .copyWith()))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 20, right: 16),
                                        child: Text("msg_your_favorite".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold18
                                                .copyWith()))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(left: 10, top: 17),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(69.00),
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 10,
                                                      right: 20,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .txtOutlineDeeporangeA20012
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder20),
                                                  child: Text("lbl_all".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16
                                                          .copyWith())),
                                              Container(
                                                  width:
                                                      getHorizontalSize(94.00),
                                                  margin: getMargin(left: 10),
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 10,
                                                      right: 20,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray400
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder20),
                                                  child: Text("lbl_hoodie".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16Bluegray800
                                                          .copyWith())),
                                              Container(
                                                  width:
                                                      getHorizontalSize(87.00),
                                                  margin: getMargin(left: 10),
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 10,
                                                      right: 20,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray400
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder20),
                                                  child: Text("lbl_shoes".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16Bluegray800
                                                          .copyWith())),
                                              Container(
                                                  width:
                                                      getHorizontalSize(91.00),
                                                  margin: getMargin(left: 10),
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 10,
                                                      right: 20,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray400
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder20),
                                                  child: Text("lbl_jacket".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16Bluegray800
                                                          .copyWith()))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 18, right: 15),
                                    child: Obx(() => ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller
                                            .favoriteOneModelObj
                                            .value
                                            .favoriteOneItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          FavoriteOneItemModel model =
                                              controller
                                                  .favoriteOneModelObj
                                                  .value
                                                  .favoriteOneItemList[index];
                                          return FavoriteOneItemWidget(model);
                                        })))
                              ])))))
                ]))));
  }

  onTapBtntf() {
    Get.back();
  }
}
