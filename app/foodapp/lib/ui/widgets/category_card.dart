import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/helper.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required Image image,
    required String name,
  })  : _image = image,
        _name = name;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 100,
            height: 100,
            child: _image,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          _name,
          style: Helper.getTheme(context)
              .headlineMedium
              ?.copyWith(color: AppColor.primary, fontSize: 16),
        ),
      ],
    );
  }
}
