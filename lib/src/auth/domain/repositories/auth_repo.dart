import 'package:tunceducation/core/enums/update_user.dart';
import 'package:tunceducation/core/utils/typedefs.dart';
import 'package:tunceducation/src/auth/domain/entities/user.dart';

abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<LocalUser> signIn(
      {required String email, required String password});

  ResultFuture<void> signUp(
      {required String email,
      required String password,
      required String fullName});

  ResultFuture<void> forgotPassword(String email);
  ResultFuture<void> updateUser(
      {dynamic userData, required UpdateUserAction action});
}
