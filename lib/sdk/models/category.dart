import 'package:sample_sdk/sdk/models/base.dart';

class Category extends BaseModel<Category> {
  int? id;
  String? name;
  Category? parent;

  Category({this.id, this.name, this.parent});

  @override
  Category fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    parent = Category().fromJson(map['parent']);

    return this;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'parent': parent?.toMap(),
    };
  }

  static Category fromJsonString(dynamic json) => Category().fromJson(json);
}
