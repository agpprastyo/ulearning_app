
import 'package:ulearning_app/src/course/domain/entities/course.dart';
import 'package:ulearning_app/src/course/domain/repos/course_repo.dart';
import 'package:ulearning_app/core/usecases/usecases.dart';
import 'package:ulearning_app/core/utils/typedefs.dart';

class GetCourses extends UsecaseWithoutParams<List<Course>> {
  const GetCourses(this._repo);

  final CourseRepo _repo;

  @override
  ResultFuture<List<Course>> call() async => _repo.getCourses();
}
