import 'package:flutter/material.dart';
import 'package:utsapp/shared/bottom_nav.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavBar(
        index: 1,
      ),
    );
  }
}
