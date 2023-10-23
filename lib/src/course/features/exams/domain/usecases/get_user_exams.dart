import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/typedefs.dart';
import 'package:tunceducation/src/course/features/exams/domain/entities/user_exam.dart';
import 'package:tunceducation/src/course/features/exams/domain/repos/exam_repo.dart';

class GetUserExams extends UsecaseWithoutParams<List<UserExam>> {
  const GetUserExams(this._repo);

  final ExamRepo _repo;

  @override
  ResultFuture<List<UserExam>> call() => _repo.getUserExams();
}
