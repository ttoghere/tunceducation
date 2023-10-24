import 'package:tunceducation/core/usecases/usecases.dart';
import 'package:tunceducation/core/utils/typedefs.dart';
import 'package:tunceducation/src/notifications/domain/repos/notification_repo.dart';

class MarkAsRead extends FutureUsecaseWithParams<void, String> {
  const MarkAsRead(this._repo);

  final NotificationRepo _repo;

  @override
  ResultFuture<void> call(String params) => _repo.markAsRead(params);
}
