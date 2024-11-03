import 'package:flutter/material.dart';
import 'database_helper.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kayıt Ol')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Kullanıcı Adı'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Şifre'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                await DatabaseHelper().insertUser(
                  usernameController.text,
                  passwordController.text,
                );
                Navigator.pop(context);
              },
              child: Text('Kaydol'),
            ),
          ],
        ),
      ),
    );
  }
}
