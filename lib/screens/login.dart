import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:toonflix/auth/google_auth.dart'; // GoogleAuth 클래스 임포트

class LoginPage extends StatelessWidget {
  final GoogleAuth _googleAuth = GoogleAuth();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // 로그인 버튼을 누를 때 로그인 시도
            final GoogleSignInAccount? googleUser =
                await _googleAuth.signInWithGoogle();
            if (googleUser != null) {
              // 로그인 성공 시 홈 화면으로 이동
              Navigator.pushReplacementNamed(context, '/home');
            }
          },
          child: const Text('Google 로그인'),
        ),
      ),
    );
  }
}
