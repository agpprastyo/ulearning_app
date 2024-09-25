import 'package:ulearning_app/core/utils/typedefs.dart';
import 'package:ulearning_app/src/course/features/materials/domain/entities/resource.dart';

abstract class MaterialRepo {
  const MaterialRepo();

  ResultFuture<List<Resource>> getMaterials(String courseId);

  ResultFuture<void> addMaterial(Resource material);
}
