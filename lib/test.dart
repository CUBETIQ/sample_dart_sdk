import 'package:sample_dart_dsdk/sdk/ClientSDK.dart';

void main(List<String> args) {
  var client = ClientSDK.getInstance();
  var productService = client.getProductService();
  var products = productService.getAll();

  print(products);

  var categoryService = client.getCategoryService();
  var categories = categoryService.getAll();
  print(categories);
}
