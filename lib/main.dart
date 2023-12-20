import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:httpexample/screens/products_screen.dart';

final cardTextStyle = GoogleFonts.quicksand(
  fontSize: 20,
  fontStyle: FontStyle.normal,
);
final cardpriceTextStyle = GoogleFonts.quicksand(
  fontSize: 20,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);
final cardtitleTextStyle = GoogleFonts.quicksand(
  fontSize: 25,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
);

void main() {
  runApp(const MaterialApp(
    home: Scaffold(body: ProductScreen()),
  ));
}
