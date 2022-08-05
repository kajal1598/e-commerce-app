import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#c9c9c9');

  static Color deepOrangeA200 = fromHex('#f66743');

  static Color red700 = fromHex('#d12645');

  static Color gray900 = fromHex('#242424');

  static Color gray101 = fromHex('#f4f4f4');

  static Color gray200 = fromHex('#efefef');

  static Color gray300 = fromHex('#e2e2e2');

  static Color gray102 = fromHex('#f2f2f2');

  static Color gray100 = fromHex('#f3f2f0');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color bluegray800 = fromHex('#344057');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color deepOrangeA2000c = fromHex('#0cf66743');

  static Color bluegray200 = fromHex('#a6aebe');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
