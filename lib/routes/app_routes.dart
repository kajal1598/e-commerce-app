import 'package:e-commerce-app/presentation/favorite_screen/favorite_screen.dart';
import 'package:e-commerce-app/presentation/favorite_screen/binding/favorite_binding.dart';
import 'package:e-commerce-app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:e-commerce-app/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:e-commerce-app/presentation/product_selected_screen/product_selected_screen.dart';
import 'package:e-commerce-app/presentation/product_selected_screen/binding/product_selected_binding.dart';
import 'package:e-commerce-app/presentation/home_screen/home_screen.dart';
import 'package:e-commerce-app/presentation/home_screen/binding/home_binding.dart';
import 'package:e-commerce-app/presentation/splash_screen/splash_screen.dart';
import 'package:e-commerce-app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:e-commerce-app/presentation/favorite_one_screen/favorite_one_screen.dart';
import 'package:e-commerce-app/presentation/favorite_one_screen/binding/favorite_one_binding.dart';
import 'package:e-commerce-app/presentation/sign_in_one_screen/sign_in_one_screen.dart';
import 'package:e-commerce-app/presentation/sign_in_one_screen/binding/sign_in_one_binding.dart';
import 'package:e-commerce-app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:e-commerce-app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String favoriteScreen = '/favorite_screen';

  static String signInScreen = '/sign_in_screen';

  static String productSelectedScreen = '/product_selected_screen';

  static String homeScreen = '/home_screen';

  static String splashScreen = '/splash_screen';

  static String favoriteOneScreen = '/favorite_one_screen';

  static String signInOneScreen = '/sign_in_one_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: favoriteScreen,
      page: () => FavoriteScreen(),
      bindings: [
        FavoriteBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: productSelectedScreen,
      page: () => ProductSelectedScreen(),
      bindings: [
        ProductSelectedBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: favoriteOneScreen,
      page: () => FavoriteOneScreen(),
      bindings: [
        FavoriteOneBinding(),
      ],
    ),
    GetPage(
      name: signInOneScreen,
      page: () => SignInOneScreen(),
      bindings: [
        SignInOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => FavoriteScreen(),
      bindings: [
        FavoriteBinding(),
      ],
    )
  ];
}
