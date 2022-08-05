import '../controller/favorite_one_controller.dart';
import '../models/favorite_one_screen_item_model.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoriteOneScreenItemWidget extends StatelessWidget {
  FavoriteOneScreenItemWidget(this.favoriteOneScreenItemModelObj);

  FavoriteOneScreenItemModel favoriteOneScreenItemModelObj;

  var controller = Get.find<FavoriteOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              200.00,
            ),
            width: getHorizontalSize(
              162.00,
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.gray200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        left: 9,
                        top: 10,
                        right: 3,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: getVerticalSize(
                          191.00,
                        ),
                        width: getHorizontalSize(
                          150.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 11,
              right: 8,
            ),
            child: Text(
              "msg_warmers_sweater".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterBold14.copyWith(),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 4,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "lbl_348_00".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium12.copyWith(),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                  ),
                  child: Text(
                    "lbl_258_00".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold12DeeporangeA200.copyWith(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
