import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:flutter/material.dart';

class Custom_Search_Widget extends StatelessWidget {
  const Custom_Search_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffc2f0ff),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.grid_view_rounded,
                  size: 30,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  width: 80,
                  height: 80,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/human.png"),
                )
              ],
            ),
            const Custom_Text(
              text: "Welcome",
              fontsize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            const Custom_Text(
              text: "All united we are our best version",
              fontsize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              style: TextStyle(fontSize: 17),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 23, vertical: 15),
                  suffixIcon: Icon(Icons.search_rounded),
                  fillColor: Color(0xffe1f8fe),
                  filled: true,
                  hintText: "Search...",
                  hintStyle: TextStyle(
                      fontFamily: "raleway", color: Colors.black, fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(50)))),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}


