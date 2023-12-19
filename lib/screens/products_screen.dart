import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:httpexample/widgets/product_item.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List productList = [];
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    Uri url = Uri.https("dummyjson.com", "products");
    final response = await http.get(url);
    final dataasJson = jsonDecode(response.body);
    setState(() {
      productList = dataasJson["products"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (ctx, index) =>
            ProductItem(imgUrl: productList[index]["thumbnail"], title: productList[index]["title"]),
      ),
    );
  }
}
