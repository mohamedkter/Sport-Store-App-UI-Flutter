import 'package:adidas_store/Screens/SneakerDetails.dart';
import 'package:adidas_store/models/sneaker.dart';
import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:flutter/material.dart';

class SneakerCard extends StatefulWidget {
  final Sneaker sneaker;

  const SneakerCard({
    super.key,
    required this.sneaker,
  });

  @override
  State<SneakerCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<SneakerCard> {
  bool is_clicked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SneakerDetails(sneaker: widget.sneaker,)));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          height: 220,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: [Color(0xfff5e45c), Color(0xfff5b946)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Column(
            children: [
              Image.asset(
                widget.sneaker.Product_image[0],
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
                            text: "${widget.sneaker.Name_of_Product}",
                            fontsize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                        const Custom_Text(
                            text: "sneakers",
                            fontsize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            is_clicked = !is_clicked;
                          });
                        },
                        icon: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.4),
                            child: Icon(is_clicked == false
                                ? Icons.favorite_outline_rounded
                                : Icons.favorite_rounded)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Custom_Text(
                        text: '\$ ${widget.sneaker.Price}',
                        fontsize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
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
      ),
    );
  }
}
