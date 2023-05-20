
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop_ui/screens/home/components/product_card.dart';
import 'package:flutter_shop_ui/screens/home/components/section_titles.dart';

import '../../../models/Product.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
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
                press: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
