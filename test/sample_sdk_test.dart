import 'package:sample_sdk/sdk.dart';
import 'package:sample_sdk/sdk/models/category.dart';
import 'package:sample_sdk/sdk/models/product.dart';

void main() async {
  final sdk = ClientSDK();

  final category = Category(
    id: 4,
    name: 'Category 4',
    parent: Category(
      id: 1,
      name: 'Category 1',
    ),
  );

  await sdk.categoryService.create(category);
  final categories = await sdk.categoryService.findAll();
  print(categories);

  final product = Product(
    id: 4,
    name: 'Product 4',
    price: 100.0,
    category: category,
  );

  await sdk.productService.create(product);
  final products = await sdk.productService.findAll();
  print(products);

  sdk.dispose();
}
