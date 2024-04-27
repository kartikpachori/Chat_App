import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? _user;
  User? get user {
    return _user;
  }

  AuthService() {}

  Future<bool> login(String email, String password) async {
    try {
      final Credential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (Credential.user != null) {
        _user = Credential.user;
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }
}
