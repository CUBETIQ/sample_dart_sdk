import 'package:sample_sdk/sdk/models/base.dart';
import 'package:sample_sdk/sdk/models/category.dart';

class Product extends BaseModel<Product> {
  int? id;
  String? name;
  double? price;
  Category? category;

  Product({this.id, this.name, this.price, this.category});

  @override
  Product fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    price = map['price'];
    category = Category().fromJson(map['category']);

    return this;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'category': category?.toMap(),
    };
  }

  static Product fromJsonString(String json) => Product().fromJson(json);
}
