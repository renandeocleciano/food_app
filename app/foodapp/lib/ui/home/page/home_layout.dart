import 'package:flutter/material.dart';
import 'package:foodapp/ui/home/widgets/home_location.dart';
import 'package:foodapp/ui/home/widgets/home_title.dart';
import 'package:foodapp/ui/widgets/category/category_widget.dart';
import 'package:foodapp/ui/widgets/custom_navbar.dart';
import 'package:foodapp/ui/widgets/restaurant_card.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/helper.dart';
import 'package:foodapp/ui/widgets/searchbar_widget.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

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
                const HomeTitle(),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Text("Entregar em:"),
                ),
                const HomeLocation(),
                const SizedBox(
                  height: 20,
                ),
                const SearchBarWidget(title: "Buscar..."),
                const SizedBox(
                  height: 20,
                ),
                const CategoryWidget(),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Populares",
                        style: Helper.getTheme(context).headlineSmall,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Ver todos"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 254,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MostPopularCard(
                          image: Image.asset(
                            Helper.getAssetName("hamburger2.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Burguer Bom",
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        MostPopularCard(
                          name: "Comidinha de Mãe",
                          image: Image.asset(
                            Helper.getAssetName("fruit.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Novos Itens",
                        style: Helper.getTheme(context).headlineSmall,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Ver Todos"),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => {},
                        child: RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName("pizza2.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Mulberry Pizza by Josh",
                        ),
                      ),
                      RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName("rice.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Barita"),
                      RecentItemCard(
                          image: Image.asset(
                            Helper.getAssetName("rice2.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                          name: "Pizza Rush Hour"),
                    ],
                  ),
                ),
              ],
            ),
          )),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: true,
              )),
        ],
      ),
    );
  }
}

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    super.key,
    required String name,
    required Image image,
  })  : _name = name,
        _image = image;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 300,
            height: 200,
            child: _image,
          ),
        ),
        SizedBox(height: 10),
        Text(
          _name,
          style: Helper.getTheme(context)
              .headlineMedium
              ?.copyWith(color: AppColor.primary),
        ),
        Row(
          children: [
            Text("Cafe"),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                ".",
                style: TextStyle(
                  color: AppColor.orange,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Western Food"),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              Helper.getAssetName("star_filled.png", "virtual"),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "4.9",
              style: TextStyle(
                color: AppColor.orange,
              ),
            )
          ],
        )
      ],
    );
  }
}

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    super.key,
    required String name,
    required Image image,
  })  : _name = name,
        _image = image;

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name,
                  style: Helper.getTheme(context)
                      .headlineMedium
                      ?.copyWith(color: AppColor.primary),
                ),
                Row(
                  children: [
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('(124) Ratings')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
