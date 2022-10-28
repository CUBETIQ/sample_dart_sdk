import 'package:sample_sdk/sdk/models/category.dart';
import 'package:sample_sdk/sdk/services/base.dart';

class CategoryService extends BaseService<Category, int> {
  final List<Category> _categories = [
    Category(id: 1, name: 'Category 1'),
    Category(id: 2, name: 'Category 2'),
    Category(id: 3, name: 'Category 3'),
  ];

  @override
  Future<Category> create(Category entity) {
    _categories.add(entity);
    return Future.value(entity);
  }

  @override
  Future<void> delete(int id) {
    _categories.removeWhere((element) => element.id == id);
    return Future.value();
  }

  @override
  Future<List<Category>> findAll() {
    return Future.value(_categories);
  }

  @override
  Future<Category> findById(int id) {
    return Future.value(_categories.firstWhere((element) => element.id == id));
  }

  @override
  Future<Category> update(Category entity) {
    final index = _categories.indexWhere((element) => element.id == entity.id);
    _categories[index] = entity;
    return Future.value(entity);
  }
}
