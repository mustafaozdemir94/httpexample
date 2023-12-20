import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:httpexample/models/product.dart';
import 'package:httpexample/widgets/product_item.dart';
// ignore: duplicate_import
import 'package:httpexample/models/product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List rawProductList = [];
  List<Product> productList = [];
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    Uri url = Uri.https('dummyjson.com', "products");
    final response = await http.get(url);
    final dataAsJson = json.decode(response.body);
    final List products = dataAsJson['products'];
    for (var element in products) {
      if (element['price'] is int) {
        element['price'] = element['price'].toDouble();
      }

      productList.add(Product(
          id: element["id"],
          brand: element["brand"],
          category: element["category"],
          description: element["description"],
          discountPercentage: element["discountPercentage"],
          images: element["images"],
          price: element["price"],
          stock: element["stock"],
          thumbnail: element["thumbnail"],
          title: element["title"]));
    }
    setState(() {
      rawProductList = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: rawProductList.length,
        itemBuilder: (ctx, index) => ProductItem(
            brand: productList[index].brand,
            category: productList[index].category,
            description: productList[index].description,
            discountPercentage: productList[index].discountPercentage,
            images: productList[index].images,
            price: productList[index].price,
            stock: productList[index].stock,
            imgUrl: productList[index].thumbnail,
            title: productList[index].title));
  }
}
