import '../controller/favorite_one_controller.dart';
import '../models/favorite_one_item_model.dart';
import '../models/favorite_one_screen_item_model.dart';
import '../widgets/favorite_one_screen_item_widget.dart';
import 'package:e-commerce-app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoriteOneItemWidget extends StatelessWidget {
  FavoriteOneItemWidget(this.favoriteOneItemModelObj);

  FavoriteOneItemModel favoriteOneItemModelObj;

  var controller = Get.find<FavoriteOneController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: getVerticalSize(
              248.00,
            ),
            crossAxisCount: 2,
            mainAxisSpacing: getHorizontalSize(
              20.00,
            ),
            crossAxisSpacing: getHorizontalSize(
              20.00,
            ),
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: favoriteOneItemModelObj.favoriteOneScreenItemList.length,
          itemBuilder: (context, index) {
            FavoriteOneScreenItemModel model =
                favoriteOneItemModelObj.favoriteOneScreenItemList[index];
            return FavoriteOneScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
