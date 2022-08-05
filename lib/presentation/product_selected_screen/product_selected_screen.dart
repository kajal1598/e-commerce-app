import '../product_selected_screen/widgets/sliderarrowleft_item_widget.dart';
import 'controller/product_selected_controller.dart';
import 'models/sliderarrowleft_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductSelectedScreen extends GetWidget<ProductSelectedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(
            833.00,
          ),
          width: size.width,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      833.00,
                    ),
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: getVerticalSize(
                              380.00,
                            ),
                            width: size.width,
                            margin: getMargin(
                              bottom: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Obx(
                                  () => CarouselSlider.builder(
                                    options: CarouselOptions(
                                      height: getVerticalSize(
                                        380.00,
                                      ),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      },
                                    ),
                                    itemCount: controller
                                        .productSelectedModelObj
                                        .value
                                        .sliderarrowleftItemList
                                        .length,
                                    itemBuilder: (context, index, realIndex) {
                                      SliderarrowleftItemModel model =
                                          controller
                                              .productSelectedModelObj
                                              .value
                                              .sliderarrowleftItemList[index];
                                      return SliderarrowleftItemWidget(
                                        model,
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Obx(
                                    () => Container(
                                      height: getVerticalSize(
                                        8.00,
                                      ),
                                      margin: getMargin(
                                        left: 170,
                                        top: 24,
                                        right: 170,
                                        bottom: 24,
                                      ),
                                      child: AnimatedSmoothIndicator(
                                        activeIndex:
                                            controller.silderIndex.value,
                                        count: controller
                                            .productSelectedModelObj
                                            .value
                                            .sliderarrowleftItemList
                                            .length,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                          spacing: 5,
                                          activeDotColor:
                                              ColorConstant.deepOrangeA200,
                                          dotColor: ColorConstant.whiteA700,
                                          dotHeight: getVerticalSize(
                                            8.00,
                                          ),
                                          dotWidth: getHorizontalSize(
                                            8.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: getMargin(
                              top: 10,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 27,
                                      right: 17,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "msg_swearshirt_arm".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold18
                                              .copyWith(),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 2,
                                            bottom: 2,
                                          ),
                                          child: Text(
                                            "lbl_317_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterSemiBold14DeeporangeA200
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 17,
                                    top: 18,
                                    right: 17,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          imagePath: ImageConstant.imgVector2,
                                          height: getSize(
                                            16.00,
                                          ),
                                          width: getSize(
                                            16.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 17,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_details".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14Bluegray800
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: getHorizontalSize(
                                      303.00,
                                    ),
                                    margin: getMargin(
                                      left: 20,
                                      top: 16,
                                      right: 20,
                                    ),
                                    child: Text(
                                      "msg_product_hunt_po".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterRegular14Bluegray200
                                          .copyWith(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 18,
                                    top: 20,
                                    right: 18,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgVector17X15,
                                          height: getVerticalSize(
                                            17.00,
                                          ),
                                          width: getHorizontalSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 18,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_size_item".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14Bluegray800
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 52,
                                    top: 17,
                                    right: 52,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: getSize(
                                          40.00,
                                        ),
                                        padding: getPadding(
                                          left: 15,
                                          top: 11,
                                          right: 16,
                                          bottom: 12,
                                        ),
                                        decoration: AppDecoration
                                            .txtOutlineBluegray200
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder20,
                                        ),
                                        child: Text(
                                          "lbl_s".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14Bluegray200
                                              .copyWith(),
                                        ),
                                      ),
                                      Container(
                                        width: getSize(
                                          40.00,
                                        ),
                                        margin: getMargin(
                                          left: 16,
                                        ),
                                        padding: getPadding(
                                          left: 14,
                                          top: 12,
                                          right: 14,
                                          bottom: 11,
                                        ),
                                        decoration: AppDecoration
                                            .txtOutlineBluegray200
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder20,
                                        ),
                                        child: Text(
                                          "lbl_m".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14Bluegray200
                                              .copyWith(),
                                        ),
                                      ),
                                      Container(
                                        width: getSize(
                                          40.00,
                                        ),
                                        margin: getMargin(
                                          left: 16,
                                        ),
                                        padding: getPadding(
                                          left: 17,
                                          top: 10,
                                          right: 15,
                                          bottom: 13,
                                        ),
                                        decoration: AppDecoration
                                            .txtOutlineDeeporangeA200
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder20,
                                        ),
                                        child: Text(
                                          "lbl_l".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14DeeporangeA200
                                              .copyWith(),
                                        ),
                                      ),
                                      Container(
                                        width: getSize(
                                          40.00,
                                        ),
                                        margin: getMargin(
                                          left: 16,
                                        ),
                                        padding: getPadding(
                                          left: 11,
                                          top: 11,
                                          right: 12,
                                          bottom: 12,
                                        ),
                                        decoration: AppDecoration
                                            .txtOutlineBluegray200
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtCircleBorder20,
                                        ),
                                        child: Text(
                                          "lbl_xl".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14Bluegray200
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 18,
                                    top: 20,
                                    right: 18,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgVector18X15,
                                          height: getVerticalSize(
                                            18.00,
                                          ),
                                          width: getHorizontalSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 18,
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_hoodie_color".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterSemiBold14Bluegray800
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 17,
                                      right: 17,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgGroup50,
                                      height: getVerticalSize(
                                        40.00,
                                      ),
                                      width: getHorizontalSize(
                                        264.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: getMargin(
                                      left: 17,
                                      top: 27,
                                      right: 16,
                                      bottom: 27,
                                    ),
                                    decoration: AppDecoration.fillDeeporangeA200
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder25,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                            bottom: 15,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgCart,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 16,
                                            top: 17,
                                            bottom: 16,
                                          ),
                                          child: Text(
                                            "lbl_add_to_cart".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold14
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
