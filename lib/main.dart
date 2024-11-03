import 'package:flutter/material.dart';
import 'database_helper.dart';
import 'login_page.dart';
import 'ana_sayfa.dart';

void main() {
  runApp(DijitalGuvenlikRehberi());
}

class DijitalGuvenlikRehberi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dijital Güvenlik Rehberi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
