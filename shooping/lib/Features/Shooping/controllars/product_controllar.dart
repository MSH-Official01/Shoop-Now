import 'package:get/state_manager.dart';
import 'package:shooping/Features/Shooping/Service/remote_service.dart';
import 'package:shooping/Features/modals/productsModals.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    var products = await RemoteServices.fetchProduct();
    if (products != null) {
      productList.value = products;
    }
  }
}
