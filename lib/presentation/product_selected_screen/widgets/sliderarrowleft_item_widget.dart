import '../controller/product_selected_controller.dart';
import '../models/sliderarrowleft_item_model.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderarrowleftItemWidget extends StatelessWidget {
  SliderarrowleftItemWidget(this.sliderarrowleftItemModelObj);

  SliderarrowleftItemModel sliderarrowleftItemModelObj;

  var controller = Get.find<ProductSelectedController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          left: 62,
          top: 62,
          right: 62,
        ),
        child: CommonImageView(
          imagePath: ImageConstant.imgImage8,
          height: getVerticalSize(
            318.00,
          ),
          width: getHorizontalSize(
            251.00,
          ),
        ),
      ),
    );
  }
}
