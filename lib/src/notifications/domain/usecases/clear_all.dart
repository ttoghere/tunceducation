import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/utils.dart';
import 'package:tunceducation/src/notifications/domain/repos/notification_repo.dart';

class ClearAll extends FutureUsecaseWithoutParams<void> {
  const ClearAll(this._repo);

  final NotificationRepo _repo;

  @override
  ResultFuture<void> call() => _repo.clearAll();
}
