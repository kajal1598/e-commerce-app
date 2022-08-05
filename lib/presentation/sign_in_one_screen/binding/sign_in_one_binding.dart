import '../controller/sign_in_one_controller.dart';
import 'package:get/get.dart';

class SignInOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInOneController());
  }
}
