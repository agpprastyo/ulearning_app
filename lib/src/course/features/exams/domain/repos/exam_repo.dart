import 'package:ulearning_app/core/utils/typedefs.dart';
import 'package:ulearning_app/src/course/features/exams/domain/entities/exam.dart';
import 'package:ulearning_app/src/course/features/exams/domain/entities/exam_question.dart';
import 'package:ulearning_app/src/course/features/exams/domain/entities/user_exam.dart';

abstract class ExamRepo {
  ResultFuture<List<Exam>> getExams(String courseId);

  ResultFuture<List<ExamQuestion>> getExamQuestions(Exam exam);

  ResultFuture<void> uploadExam(Exam exam);

  ResultFuture<void> updateExam(Exam exam);

  ResultFuture<void> submitExam(UserExam exam);

  ResultFuture<List<UserExam>> getUserExams();

  ResultFuture<List<UserExam>> getUserCourseExams(String courseId);
}
