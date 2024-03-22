import 'package:adidas_store/widget/Custom_Search_Widget.dart';
import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:adidas_store/widget/SneakerSlider.dart';
import 'package:adidas_store/widget/TshirtSlider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Custom_Search_Widget(),
              SizedBox(
                height: 20,
              ),
              Custom_Text(
                  text: "Running",
                  fontsize: 23,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              SizedBox(
                height: 10,
              ),
              SneakerSlider(),
              SizedBox(
                height: 20,
              ),
              Custom_Text(
                  text: "SportWear",
                  fontsize: 23,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
              SizedBox(
                height: 10,
              ),
             TshirtSlider()
            ],
          ),
        ),
      ),
    );
  }
}

