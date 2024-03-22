import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:flutter/material.dart';

class Add_To_Cart_Btn extends StatelessWidget {
  
  final VoidCallback ontap;
  const Add_To_Cart_Btn({
    super.key, required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
          height: 140,
          child: Row(
            children: [
              Container(
                height: 70,
                width: MediaQuery.sizeOf(context).width - 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.black,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 50,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Custom_Text(
                          text: "Add to Cart",
                          fontsize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 176, 209, 207),
                        radius: 29,
                        child: Icon(Icons.shopping_bag_outlined),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

