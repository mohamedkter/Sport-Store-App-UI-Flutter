import 'package:adidas_store/models/sneaker.dart';
import 'package:adidas_store/widget/Add_To_Cart_Btn.dart';
import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:adidas_store/widget/ProductScreenAppBar.dart';
import 'package:adidas_store/widget/SizeSlider.dart';
import 'package:flutter/material.dart';

class SneakerDetails extends StatefulWidget {
  final Sneaker sneaker;
  const SneakerDetails({super.key, required this.sneaker});

  @override
  State<SneakerDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<SneakerDetails> {
  String sneakerImage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffbde8f5), Color(0xffc9c1fb)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            children: [
              const ProductScreenAppBar(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Custom_Text(
                          text: widget.sneaker.Name_of_Product,
                          fontsize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      const Custom_Text(
                          text: "Sneakers",
                          fontsize: 25,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)
                    ],
                  ),
                ],
              ),
              Image.asset(
                sneakerImage == ""
                    ? widget.sneaker.Product_image[1]
                    : sneakerImage,
                width: double.infinity,
                height: 350,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Custom_Text(
                      text: "PRICE",
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontsize: 17,
                    ),
                    Custom_Text(
                      text: "COLORS",
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontsize: 17,
                    ),
                  ]),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Custom_Text(
                  text: '\$  ${widget.sneaker.Price}',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontsize: 25,
                ),
                SizedBox(
                  width: (MediaQuery.sizeOf(context).width / 2) - 50,
                  height: 50,
                  child: ListView.builder(
                    itemBuilder: (context, i) => InkWell(
                        onTap: () {
                          setState(() {
                            sneakerImage = widget.sneaker.Product_colors[i];
                          });
                        },
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(widget.sneaker.Product_colors[i]),
                          radius: 30,
                          backgroundColor: Colors.transparent,
                        )),
                    shrinkWrap: true,
                    itemCount: widget.sneaker.Product_colors.length,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ]),
              const SizedBox(
                height: 5,
              ),
              const SizeSlider(),
              Add_To_Cart_Btn(
                ontap: () => print("add to cart"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
