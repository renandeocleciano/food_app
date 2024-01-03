import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/infra/repository/home_repository.dart';
import 'package:foodapp/infra/service/category_service.dart';
import 'package:foodapp/ui/home/page/home_layout.dart';
import 'package:foodapp/ui/widgets/category/bloc/category_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => HomeRepository(categoryService: CategoryService()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<CategoryBloc>(
                create: (context) =>
                    CategoryBloc(repository: context.read<HomeRepository>())
                      ..add(GetCategories()))
          ],
          child: const HomeLayout(),
        ),
      ),
    );
  }
}
