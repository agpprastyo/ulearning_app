import 'package:ulearning_app/core/usecases/usecases.dart';
import 'package:ulearning_app/core/utils/typedefs.dart';
import 'package:ulearning_app/src/course/features/materials/domain/entities/resource.dart';
import 'package:ulearning_app/src/course/features/materials/domain/repos/material_repo.dart';

class AddMaterial extends FutureUsecaseWithParams<void, Resource> {
  const AddMaterial(this._repo);

  final MaterialRepo _repo;

  @override
  ResultFuture<void> call(Resource params) => _repo.addMaterial(params);
}
