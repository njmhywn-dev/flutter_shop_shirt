import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Category.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
        demo_categories.length,
        (index) => Padding(
          padding: const EdgeInsets.only(left: defaultPadding /2, right: defaultPadding /2),
          child: CatergoryCard(
            icon: demo_categories[index].icon, 
            title: demo_categories[index].title, 
            press: (){},
            ),
        ),
          ),
      ),
    );
  }
}
