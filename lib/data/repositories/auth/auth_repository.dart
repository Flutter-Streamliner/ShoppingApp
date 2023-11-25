import 'package:shop_app/data/models/models.dart';

abstract class IAuthRepository {
  Future<Result<UserItem>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}