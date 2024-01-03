import 'package:flutter/material.dart';
import 'package:foodapp/utils/helper.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Olá Renan!",
            style: Helper.getTheme(context).headlineSmall,
          ),
          Image.asset(Helper.getAssetName("cart.png", "virtual"))
        ],
      ),
    );
  }
}
