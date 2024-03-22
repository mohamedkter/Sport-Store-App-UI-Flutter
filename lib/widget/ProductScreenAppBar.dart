import 'package:flutter/material.dart';

class ProductScreenAppBar extends StatelessWidget {
  const ProductScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: const Icon(
                  Icons.arrow_back,
                ))),
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Container(
                height: 60,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: const Icon(
                  Icons.favorite,
                )))
      ],
    );
  }
}
