import 'package:adidas_store/Data/ProductData.dart';
import 'package:adidas_store/widget/SneakerCard.dart';
import 'package:flutter/material.dart';

class SneakerSlider extends StatelessWidget {
  const SneakerSlider({
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
              itemBuilder: (context, index) =>SneakerCard(sneaker: Sneakers[index],),
              itemCount: Sneakers.length,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}



