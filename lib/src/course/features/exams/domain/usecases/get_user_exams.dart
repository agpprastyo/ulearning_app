import 'package:ulearning_app/core/usecases/usecases.dart';
import 'package:ulearning_app/core/utils/typedefs.dart';
import 'package:ulearning_app/src/course/features/exams/domain/entities/user_exam.dart';
import 'package:ulearning_app/src/course/features/exams/domain/repos/exam_repo.dart';

class GetUserExams extends FutureUsecaseWithoutParams<List<UserExam>> {
  const GetUserExams(this._repo);

  final ExamRepo _repo;

  @override
  ResultFuture<List<UserExam>> call() => _repo.getUserExams();
}
