// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> welcomeFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String welcomeToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
      required this.model,
      required this.pk,
      required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
      model: json["model"],
      pk: json["pk"],
      fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    int price;
    String description;
    DateTime time;
    int stock;

    Fields({
        required this.name,
        required this.price,
        required this.description,
        required this.time,
        required this.stock,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        price: json["price"],
        description: json["description"],
        time: DateTime.parse(json["time"]),
        stock: json["stock"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "description": description,
        "time": "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "stock": stock,
    };
}
