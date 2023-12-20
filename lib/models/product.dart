class Product {
  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images});
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List images;
}
