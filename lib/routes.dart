import 'package:toonflix/screens/login.dart';

class Routes {
  Routes._();

  static const String firstRoom = '/firstRoom';
  static const String secondRoom = '/secondRoom';
  static const String bathRoom = '/bathRoom';
  static const String exit = '/exit';

  static final routes = <String, WidgetBuilder>{
    const Login(): (BuildContext context) => login(),
  };
}
