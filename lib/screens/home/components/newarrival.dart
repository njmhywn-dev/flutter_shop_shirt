import 'package:flutter/material.dart';
import 'package:flutter_shop_ui/screens/detail/detail.dart';
import 'package:flutter_shop_ui/screens/home/components/product_card.dart';
import 'package:flutter_shop_ui/screens/home/components/section_titles.dart';

import '../../../models/Product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => ProductCard(
                image: demo_product[index].image,
                title: demo_product[index].title,
                price: demo_product[index].price,
                bgColor: demo_product[index].bgColor,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(product: demo_product[index],)));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}