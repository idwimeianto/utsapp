import 'package:flutter/material.dart';
import 'package:utsapp/shared/bottom_nav.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
