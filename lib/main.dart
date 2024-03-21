import 'package:adidas_store/widget/Custom_Search_Widget.dart';
import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:adidas_store/widget/ProductSlider.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adidas Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffc2f0ff)),
        useMaterial3: true,
      ),
      home: const Scaffold(
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
                ProductSlider()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
