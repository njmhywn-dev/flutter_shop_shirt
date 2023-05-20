import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CatergoryCard extends StatelessWidget {
  const CatergoryCard({
    super.key, 
    required this.icon, 
    required this.title, 
    required this.press,
  });

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press, 
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding / 4, 
          vertical: defaultPadding / 2),
        child: Column(
          children: [
            SvgPicture.asset("$icon"),
            SizedBox(height: defaultPadding / 2,),
            Text(
              "$title",
              style: Theme.of(context).textTheme.titleMedium),
          ],
          ),
      ),
      );
  }
}