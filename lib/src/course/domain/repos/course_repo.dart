
import 'package:ulearning_app/src/course/domain/entities/course.dart';
import 'package:ulearning_app/core/utils/typedefs.dart';

abstract class CourseRepo {
  const CourseRepo();

  ResultFuture<List<Course>> getCourses();

  ResultFuture<void> addCourse(Course course);
}
