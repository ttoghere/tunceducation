import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/typedefs.dart';
import 'package:tunceducation/src/course/features/exams/domain/entities/exam.dart';
import 'package:tunceducation/src/course/features/exams/domain/entities/exam_question.dart';
import 'package:tunceducation/src/course/features/exams/domain/repos/exam_repo.dart';

class GetExamQuestions extends UsecaseWithParams<List<ExamQuestion>, Exam> {
  const GetExamQuestions(this._repo);

  final ExamRepo _repo;

  @override
  ResultFuture<List<ExamQuestion>> call(Exam params) =>
      _repo.getExamQuestions(params);
}
