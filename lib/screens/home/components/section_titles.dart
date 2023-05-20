import 'package:flutter/material.dart';

import '../../../constants.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, 
    required this.title, 
    required this.pressSeeAll,
  });

  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title", style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),),
          TextButton(
            onPressed: pressSeeAll,
            child: Text("See All",style: TextStyle(color: Colors.black54),),
            ),
        ],
      ),
    );
  }
}


