import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app/data/models/models.dart';
import 'package:shop_app/data/repositories/auth/auth_repository.dart';
import 'package:shop_app/data/repositories/auth/firebase_auth_wrapper.dart';

class FirebaseAuthRepository implements IAuthRepository {

  FirebaseAuthRepository({required FirebaseAuthWrapper firebaseAuthWrapper}) :
    _firebaseAuthWrapper = firebaseAuthWrapper;

  final FirebaseAuthWrapper _firebaseAuthWrapper;

  @override
  Future<Result<UserItem>> signInWithEmailAndPassword({required String email, required String password}) async {
    final UserCredential result = await _firebaseAuthWrapper.signInWithEmailAndPassword(email: email, password: password);
    final User? user = result.user;
    final String? accessToken = result.credential?.accessToken;
    if (user == null || accessToken == null) {
      return const Result.failed(failure: UserRequestFailure());
    } else if (!user.emailVerified) {
      return const Result.failed(failure: UserIsNotVerifiedFailure());
    }
    UserItem userItem = UserItem(accessToken: accessToken);
    return Result.success(data: userItem);
  }

}