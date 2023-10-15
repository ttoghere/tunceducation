import 'package:tunceducation/core/utils/utils.dart';

// An abstract base class for use cases with parameters.
abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();

  // The method to be implemented by concrete use cases with parameters.
  ResultFuture<Type> call(Params params);
}

// An abstract base class for use cases without parameters.
abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();

  // The method to be implemented by concrete use cases without parameters.
  ResultFuture<Type> call();
}
