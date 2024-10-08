
import 'package:ulearning_app/src/course/domain/entities/course.dart';
import 'package:ulearning_app/src/course/domain/repos/course_repo.dart';
import 'package:ulearning_app/core/usecases/usecases.dart';
import 'package:ulearning_app/core/utils/typedefs.dart';

class AddCourse extends FutureUsecaseWithParams<void, Course> {
  const AddCourse(this._repo);

  final CourseRepo _repo;

  @override
  ResultFuture<void> call(Course params) async => _repo.addCourse(params);
}
