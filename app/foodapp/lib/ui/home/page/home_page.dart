import 'package:flutter/material.dart';
import 'package:foodapp/ui/widgets/category_card.dart';
import 'package:foodapp/ui/widgets/restaurant_card.dart';
import 'package:foodapp/utils/helper.dart';
import 'package:foodapp/ui/widgets/searchbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text("Entregar em:"),
                ),
                Padding(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                const SearchBarWidget(title: "Buscar..."),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("hamburger2.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Lanches",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("rice2.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Executivos",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("fruit.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Italiana",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("rice.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Indiana",
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RestaurantCard(
                  image: Image.asset(
                    Helper.getAssetName("pizza2.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Restaurante 01",
                ),
                RestaurantCard(
                  image: Image.asset(
                    Helper.getAssetName("rice2.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Restaurante 02",
                ),
                RestaurantCard(
                  image: Image.asset(
                    Helper.getAssetName("rice.jpg", "real"),
                    fit: BoxFit.cover,
                  ),
                  name: "Restaurante 03",
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
