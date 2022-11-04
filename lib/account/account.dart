import 'package:flutter/material.dart';
import 'package:utsapp/shared/bottom_nav.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Saya'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
