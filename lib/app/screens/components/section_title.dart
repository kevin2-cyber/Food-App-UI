import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(primary: kActiveColor),
          child: Text('Sell All'),
        ),
      ],
    );
  }
}