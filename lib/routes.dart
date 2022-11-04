import 'package:utsapp/home/home.dart';
import 'package:utsapp/login/login.dart';

var appRoutes = {
  '/': (context) => const LoginScreen(),
  '/login': (context) => const LoginScreen(),
  '/home': (context) => const HomeScreen(),
};
