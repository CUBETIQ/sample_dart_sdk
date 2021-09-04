import 'package:sample_dart_dsdk/sdk/services/CategoryService.dart';
import 'package:sample_dart_dsdk/sdk/services/ProductService.dart';

class ClientSDK {
  static var _instance;

  static ClientSDK getInstance() {
    if (_instance == null) {
      ClientSDK();
    }

    return _instance;
  }

  ProductService getProductService() {
    return ProductService();
  }

  CategoryService getCategoryService() => CategoryService();
}
