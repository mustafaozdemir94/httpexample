import 'package:flutter/material.dart';
import 'package:httpexample/main.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {required this.imgUrl,
      required this.title,
      Key? key,
      required this.brand,
      required this.category,
      required this.description,
      required this.discountPercentage,
      required this.images,
      required this.price,
      required this.stock})
      : super(key: key);
  final String brand;
  final String category;
  final String description;
  final double discountPercentage;
  final List images;
  final double price;
  final int stock;
  final String imgUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 30,
        color: Colors.blueGrey,
        margin: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.network(imgUrl),
            Text(
              title,
              style: cardtitleTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                description,
                style: cardTextStyle,
              ),
            ),
            Text(
              "Price: $price \$",
              style: cardpriceTextStyle,
            ),
          ],
        ));
  }
}
    





    /*Column(
          children = [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text(titleLarge)],
            ),
            const SizedBox(
              height: 15,
            ),
            Image.network(
              imgUrl,
              width: 250,
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Marka: $brand"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("Fiyatı: $price \$"), Text("Kalan Stok: $stock")],
            )
          ],
        ),*/