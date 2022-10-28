import 'package:sample_sdk/sdk/models/category.dart';
import 'package:sample_sdk/sdk/models/product.dart';
import 'package:sample_sdk/sdk/services/base.dart';

class ProductService extends BaseService<Product, int> {
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'Product 1',
      price: 100.0,
      category: Category(
        id: 1,
        name: 'Category 1',
      ),
    ),
    Product(
      id: 2,
      name: 'Product 2',
      price: 200.0,
      category: Category(
        id: 2,
        name: 'Category 2',
      ),
    ),
    Product(
      id: 3,
      name: 'Product 3',
      price: 300.0,
      category: Category(
        id: 3,
        name: 'Category 3',
      ),
    ),
  ];

  @override
  Future<Product> create(Product entity) {
    _products.add(entity);
    return Future.value(entity);
  }

  @override
  Future<void> delete(int id) {
    _products.removeWhere((element) => element.id == id);
    return Future.value();
  }

  @override
  Future<List<Product>> findAll() {
    return Future.value(_products);
  }

  @override
  Future<Product> findById(int id) {
    return Future.value(_products.firstWhere((element) => element.id == id));
  }

  @override
  Future<Product> update(Product entity) {
    final index = _products.indexWhere((element) => element.id == entity.id);
    _products[index] = entity;
    return Future.value(entity);
  }
}
