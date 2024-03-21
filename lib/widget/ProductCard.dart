import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {

  const ProductCard({
    super.key,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool is_clicked=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 220,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [Color(0xfff5e45c), Color(0xfff5b946)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            Image.asset(
              "assets/images/1.1.png",
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(
                          text: "Runfalcon",
                          fontsize: 19,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      Custom_Text(
                          text: "sneakers",
                          fontsize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          is_clicked=!is_clicked;
                        });
                      },
                      icon: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.4),
                          child: Icon(is_clicked==false?Icons.favorite_outline_rounded:Icons.favorite_rounded)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Custom_Text(
                      text: "276",
                      fontsize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}