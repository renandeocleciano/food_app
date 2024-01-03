import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/ui/widgets/category/bloc/category_bloc.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/helper.dart';

class CategorySuccessWidget extends StatelessWidget {
  const CategorySuccessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .15,
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.network(
                            state.categories[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        state.categories[index].title,
                        style: Helper.getTheme(context)
                            .headlineMedium
                            ?.copyWith(color: AppColor.primary, fontSize: 16),
                      ),
                    ],
                  ) //const SizedBox(width: 10),
                ],
              );
            },
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => const SizedBox(
                  width: 16.0,
                ),
            itemCount: state.categories.length),
      );
    });
  }
}
