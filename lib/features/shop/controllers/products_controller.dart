// product_controller.dart
import 'package:get/get.dart';
import '../../../utils/http/api_product_call.dart';
import '../../../utils/models/product_models.dart';


class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if (products != null) {
        productList.value= products as List<Product>;
      }
    } finally {
      isLoading(false);
    }
  }
}
