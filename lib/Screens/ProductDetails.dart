import 'package:adidas_store/models/Tshirt.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Tshirt tshirt;
  const ProductDetails({super.key, required this.tshirt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("${tshirt.Name_of_Product}") ,),
      body: SingleChildScrollView(child: Image.asset(tshirt.Product_image[1]),),
    );
  }
}