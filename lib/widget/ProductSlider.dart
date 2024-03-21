import 'package:adidas_store/widget/ProductCard.dart';
import 'package:flutter/material.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: 220,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => ProductCard(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}



