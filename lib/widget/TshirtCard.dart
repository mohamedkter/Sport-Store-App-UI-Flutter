import 'package:adidas_store/Screens/TshirtDetails.dart';
import 'package:adidas_store/models/Tshirt.dart';
import 'package:adidas_store/widget/Custom_Text.dart';
import 'package:flutter/material.dart';

class TshirtCard extends StatefulWidget {
final Tshirt tshirt;

  const TshirtCard({
    super.key, required this.tshirt
  });

  @override
  State<TshirtCard> createState() => _TshirtCardState();
}

class _TshirtCardState extends State<TshirtCard> {
bool is_favorite=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TshirtDetails(tshirt:widget.tshirt,))),
        child: Container(
          width: MediaQuery.sizeOf(context).width - 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: [Color(0xffbde8f5), Color(0xffc9c1fb)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("${widget.tshirt.Product_image[0]}"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          is_favorite=!is_favorite;
                        });
                      },
                      icon: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.4),
                          child: Icon(is_favorite==true?Icons.favorite_rounded:Icons.favorite_outline_rounded))),
                 const SizedBox(
                    height: 40,
                  ),
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Custom_Text(
                          text: "${widget.tshirt.Name_of_Product}",
                          fontsize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                      const Custom_Text(
                          text: "Tshirts",
                          fontsize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Custom_Text(
                          text: '\$ ${widget.tshirt.Price}',
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
