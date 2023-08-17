import 'package:flutter/material.dart';
import 'package:toonflix/auth/google_auth.dart'; // 구글 로그인 관련 파일 임포트
import 'package:toonflix/screens/home_screen.dart'; // 홈 스크린 파일 임포트
import 'package:toonflix/screens/login.dart'; // 로그인 페이지 파일 임포트

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppWrapper(),
    );
  }
}

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  _AppWrapperState createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  final GoogleAuth _googleAuth = GoogleAuth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    // 로그인 상태에 따라 화면을 결정
    if (_googleAuth.isSignedIn()) {
      return HomeScreen(); // 로그인된 상태면 HomeScreen 표시
    } else {
      return LoginPage(); // 로그인 안 된 상태면 LoginPage 표시
    }
  }
}
