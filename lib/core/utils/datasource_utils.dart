import 'package:firebase_auth/firebase_auth.dart';
import 'package:tunceducation/core/errors/errors.dart';

class DataSourceUtils {
  const DataSourceUtils._();

  static Future<void> authorizeUser(FirebaseAuth auth) async {
    final user = auth.currentUser;
    if (user == null) {
      throw const ServerException(
        message: 'User is not authenticated',
        statusCode: '401',
      );
    }
  }
}
