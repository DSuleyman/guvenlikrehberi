import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Kopyalama işlemi için gerekli
import 'dart:math';

class SifreOlusturucuSayfa extends StatefulWidget {
  @override
  _SifreOlusturucuSayfaState createState() => _SifreOlusturucuSayfaState();
}

class _SifreOlusturucuSayfaState extends State<SifreOlusturucuSayfa> {
  String _sifre = '';

  String _sifreOlustur(int uzunluk) {
    const String karakterler = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_-+=<>?';
    Random rastgele = Random();
    return List.generate(uzunluk, (index) => karakterler[rastgele.nextInt(karakterler.length)]).join();
  }

  void _sifreOlusturVeGoster() {
    setState(() {
      _sifre = _sifreOlustur(16); // 16 karakterli karmaşık şifre
    });
  }

  void _kopyala() {
    Clipboard.setData(ClipboardData(text: _sifre)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Şifre kopyalandı!')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şifre Oluşturucu'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3FA2E3), // Buton rengi
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    onPressed: _sifreOlusturVeGoster,
                    child: Text('Şifre Oluştur'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Oluşturulan Şifre:',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    _sifre,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3FA2E3), // Buton rengi
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    onPressed: _kopyala,
                    child: Text('Şifreyi Kopyala'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
