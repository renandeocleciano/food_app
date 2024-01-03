import 'package:foodapp/infra/model/category_model.dart';
import 'package:foodapp/infra/service/category_service.dart';

class HomeRepository {
  const HomeRepository({required this.categoryService});

  final CategoryService categoryService;

  Future<List<CategoryModel>> getCategories() async =>
      categoryService.getCategories();
}
