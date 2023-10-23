import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/utils.dart';
import 'package:tunceducation/src/course/domain/entities/course.dart';
import 'package:tunceducation/src/course/domain/repos/course_repo.dart';

class AddCourse extends UsecaseWithParams<void, Course> {
  const AddCourse(this._repo);

  final CourseRepo _repo;

  @override
  ResultFuture<void> call(Course params) async => _repo.addCourse(params);
}
