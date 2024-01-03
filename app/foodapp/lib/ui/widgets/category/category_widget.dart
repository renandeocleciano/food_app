import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/ui/widgets/category/bloc/category_bloc.dart';
import 'package:foodapp/ui/widgets/category/category_success_widget.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      buildWhen: (previous, current) => current.status.isSuccess,
      builder: (context, state) {
        return const CategorySuccessWidget();
      },
    );
  }
}
