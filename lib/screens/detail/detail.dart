import 'package:flutter/material.dart';
import 'package:flutter_shop_ui/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        actions: [
          IconButton(onPressed: (){},
          icon: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              "assets/icons/Heart.svg",
            height: 20,
            ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(product.image, height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title, 
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(width: defaultPadding,),
                      Text(
                        NumberFormat("#,###.##").format(product.price)+"฿", 
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Padding(                       padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) ling and usually having 2-5 buttons."
                    ),
                  ),
                  Text(
                    "Colors",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: defaultPadding / 2,),
                  Row(
                    children: [
                      Colordot(color: Color.fromARGB(255, 255, 162, 0), isActive: false, press: (){},),
                      Colordot(color: Color.fromARGB(255, 0, 0, 0), isActive: true, press: (){},),
                      Colordot(color: Color(0xFFBEE8EA), isActive: false, press: (){},),
                    ],
                  ),
                  SizedBox(height: defaultPadding * 1.5,),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(backgroundColor: primaryColor, shape: StadiumBorder()), 
                        child: Text("Add to cart"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        ),
    );
  }
}

class Colordot extends StatelessWidget {
  const Colordot({
    super.key, 
    required this.color, 
    required this.isActive, 
    required this.press,
  });

  final Color color;
  final bool isActive;
  final VoidCallback press;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(border: Border.all(color: isActive ? primaryColor : Colors.transparent),
        shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}