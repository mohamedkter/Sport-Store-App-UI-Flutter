import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:flutter/material.dart';

class SizeSlider extends StatelessWidget {
  const SizeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.sizeOf(context).width) - 50,
      height: 45,
      child: ListView.builder(
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Container(
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Custom_Text(
                    color: Colors.black,
                    text: "${i + 32}",
                    fontWeight: FontWeight.w600,
                    fontsize: 17,
                  ),
                ],
              )),
        ),
        shrinkWrap: true,
        itemCount: 20,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

