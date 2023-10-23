import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/typedefs.dart';
import 'package:tunceducation/src/course/features/videos/domain/entities/video.dart';
import 'package:tunceducation/src/course/features/videos/domain/repos/video_repo.dart';

class AddVideo extends UsecaseWithParams<void, Video> {
  const AddVideo(this._repo);

  final VideoRepo _repo;

  @override
  ResultFuture<void> call(Video params) => _repo.addVideo(params);
}
