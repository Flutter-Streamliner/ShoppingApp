import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthWrapper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) => _auth.signInWithEmailAndPassword(email: email, password: password);
}