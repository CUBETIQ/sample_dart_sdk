import 'package:sample_sdk/sdk/services/category.dart';
import 'package:sample_sdk/sdk/services/product.dart';

class ClientSDK {
  static var _instance;

  static ClientSDK getInstance() {
    if (_instance == null) {
      ClientSDK();
    }

    return _instance;
  }

  ProductService productService = ProductService();

  CategoryService categoryService = CategoryService();

  ClientSDK() {
    _instance = this;
  }

  void dispose() {
    _instance = null;
  }

}
