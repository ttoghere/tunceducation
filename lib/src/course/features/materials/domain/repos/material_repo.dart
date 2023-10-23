import 'package:tunceducation/core/utils/typedefs.dart';
import 'package:tunceducation/src/course/features/materials/domain/entities/resource.dart';

abstract class MaterialRepo {
  const MaterialRepo();

  ResultFuture<List<Resource>> getMaterials(String courseId);

  ResultFuture<void> addMaterial(Resource material);
}
