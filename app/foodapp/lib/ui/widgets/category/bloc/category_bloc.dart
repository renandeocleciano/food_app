import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodapp/infra/model/category_model.dart';
import 'package:foodapp/infra/repository/home_repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required this.repository,
  }) : super(const CategoryState()) {
    on<GetCategories>(_mapGetCategoriesEventToState);
    on<SelectCategory>(_mapSelectCategoryEventToState);
  }
  final HomeRepository repository;

  void _mapGetCategoriesEventToState(
      GetCategories event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(status: CategoryStatus.loading));
    try {
      final categories = await repository.getCategories();
      emit(
        state.copyWith(
          status: CategoryStatus.success,
          categories: categories,
        ),
      );
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }

  void _mapSelectCategoryEventToState(
      SelectCategory event, Emitter<CategoryState> emit) async {
    emit(
      state.copyWith(
        status: CategoryStatus.selected,
        idSelected: event.idSelected,
      ),
    );
  }
}
