import "package:firebase_auth/firebase_auth.dart";

class AuthService {
  // sign in using google
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInGoogle() async {
    try {
      UserCredential credentials =
          await _auth.signInWithProvider(GoogleAuthProvider());
      return credentials.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  // register with email and password

  //sign out
}
