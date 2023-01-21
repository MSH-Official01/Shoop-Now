// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  List<Datum>? data;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        success: json["success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.category,
    this.icon,
    this.subcategory,
  });

  int? id;
  String? category;
  String? icon;
  List<Subcategory>? subcategory;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        category: json["category"],
        icon: json["icon"],
        subcategory: List<Subcategory>.from(
            json["subcategory"].map((x) => Subcategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "icon": icon,
        "subcategory": List<dynamic>.from(subcategory!.map((x) => x.toJson())),
      };
}

class Subcategory {
  Subcategory({
    this.name,
    this.childCategory,
  });

  String? name;
  List<ChildCategory>? childCategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) => Subcategory(
        name: json["name"],
        childCategory: List<ChildCategory>.from(
            json["child_category"].map((x) => ChildCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "child_category":
            List<dynamic>.from(childCategory!.map((x) => x.toJson())),
      };
}

class ChildCategory {
  ChildCategory({
    this.name,
  });

  String? name;

  factory ChildCategory.fromJson(Map<String, dynamic> json) => ChildCategory(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
