import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/utils.dart';
import 'package:tunceducation/src/on_boarding/domain/repositories/on_boarding_repo.dart';

// A use case to cache information about whether the user is a first-time user.
class CacheFirstTimer extends FutureUsecaseWithoutParams<void> {
  const CacheFirstTimer(this._repo);
  final OnBoardingRepo _repo;
  @override
  ResultFuture<void> call() async => _repo.cacheFirstTimer();
}
