import 'package:tunceducation/core/common/features/course/domain/entities/course.dart';
import 'package:tunceducation/core/common/features/course/domain/repos/course_repo.dart';
import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/utils.dart';

class GetCourses extends UsecaseWithoutParams<List<Course>> {
  const GetCourses(this._repo);

  final CourseRepo _repo;

  @override
  ResultFuture<List<Course>> call() async => _repo.getCourses();
}
