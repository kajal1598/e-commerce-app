import '/core/app_export.dart';
import 'package:e-commerce-app/presentation/product_selected_screen/models/product_selected_model.dart';

class ProductSelectedController extends GetxController {
  Rx<ProductSelectedModel> productSelectedModelObj = ProductSelectedModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
