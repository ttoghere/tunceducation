import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/typedefs.dart';
import 'package:tunceducation/src/course/features/exams/domain/entities/exam.dart';
import 'package:tunceducation/src/course/features/exams/domain/repos/exam_repo.dart';

class UpdateExam extends UsecaseWithParams<void, Exam> {
  const UpdateExam(this._repo);

  final ExamRepo _repo;

  @override
  ResultFuture<void> call(Exam params) => _repo.updateExam(params);
}
