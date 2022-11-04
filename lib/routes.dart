import 'package:utsapp/home/home.dart';
import 'package:utsapp/login/login.dart';
import 'package:utsapp/notification/notification.dart';

var appRoutes = {
  '/': (context) => const LoginScreen(),
  '/login': (context) => const LoginScreen(),
  '/home': (context) => const HomeScreen(),
  '/notification': (context) => const NotificationScreen(),
};
