import '../controller/product_selected_controller.dart';
import 'package:get/get.dart';

class ProductSelectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductSelectedController());
  }
}
