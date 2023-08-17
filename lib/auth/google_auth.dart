import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  bool isSignedIn() {
    return _googleSignIn.currentUser != null;
  }

  Future<GoogleSignInAccount?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      return googleUser;
    } catch (error) {
      print("Google 로그인 실패: $error");
      return null;
    }
  }

  void signOut() async {
    await _googleSignIn.signOut();
  }
}
