class Product {
  int id;
  String name;
  double price;

  Product(this.id, this.name, this.price);

  static Product fromJson(dynamic json) => Product(
        json['id'],
        json['name'],
        json['price'],
      );
}

class ProductRequest {
  String name;
  double price;

  ProductRequest(this.name, this.price);
}
