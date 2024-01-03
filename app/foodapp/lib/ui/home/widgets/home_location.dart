import 'package:flutter/material.dart';
import 'package:foodapp/utils/helper.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: DropdownButtonHideUnderline(
        child: SizedBox(
          width: 250,
          child: DropdownButton(
            value: "current location",
            items: const [
              DropdownMenuItem(
                value: "current location",
                child: Text("Localização Atual"),
              ),
            ],
            icon: Image.asset(
              Helper.getAssetName("dropdown_filled.png", "virtual"),
            ),
            style: Helper.getTheme(context).headlineMedium,
            onChanged: (_) {},
          ),
        ),
      ),
    );
  }
}
