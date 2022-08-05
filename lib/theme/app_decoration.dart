import 'package:flutter/material.dart';
import 'package:e-commerce-app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineBluegray200 => BoxDecoration(
        color: ColorConstant.gray101,
        border: Border.all(
          color: ColorConstant.bluegray200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get fillDeeporangeA200 => BoxDecoration(
        color: ColorConstant.deepOrangeA200,
      );
  static BoxDecoration get txtOutlineDeeporangeA20012 => BoxDecoration(
        color: ColorConstant.deepOrangeA2000c,
        border: Border.all(
          color: ColorConstant.deepOrangeA200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: ColorConstant.black900,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtOutlineDeeporangeA200 => BoxDecoration(
        color: ColorConstant.gray101,
        border: Border.all(
          color: ColorConstant.deepOrangeA200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray400 => BoxDecoration(
        color: ColorConstant.gray102,
        border: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius circleBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius txtCircleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius customBorderBL20 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius circleBorder39 = BorderRadius.circular(
    getHorizontalSize(
      39.00,
    ),
  );
}
