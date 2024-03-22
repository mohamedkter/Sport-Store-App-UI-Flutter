import 'package:adidas_store/Data/ProductData.dart';
import 'package:adidas_store/widget/TshirtCard.dart';
import 'package:flutter/material.dart';

class TshirtSlider extends StatelessWidget {
  
  const TshirtSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            height: 310,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, i) => TshirtCard(tshirt: Tshirts[i],),
              itemCount: Tshirts.length,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
