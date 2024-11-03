import 'package:flutter/material.dart';
import 'sifre_olusturucu.dart';
import 'bullying_survey.dart';
import 'privacy_settings_page.dart';
import 'data_protection_page.dart';
import 'mini_oyun.dart';
import 'sifre_guvencesi.dart';
import 'cocuk_egitim_modulu.dart'; // Yeni sayfa ekle

class AnaSayfa extends StatefulWidget {
  final int? score;

  AnaSayfa({this.score});

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dijital Güvenlik Rehberi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (widget.score != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Zorbalık Anketinden Kazandığınız Puan: ${widget.score}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
                  textAlign: TextAlign.center,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hızlı İpuçları',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _sevimliKarti('Güçlü Şifreler 💪', Icons.lock, Color(0xFF3FA2E3)),
                  _sevimliKarti('Gizlilik Ayarları 🔒', Icons.privacy_tip, Colors.black),
                  _sevimliKarti('Veri Koruma 🛡️', Icons.shield, Color(0xFF0C9275)),
                  _sevimliKarti('Anket 📊', Icons.poll, Colors.blue),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Bugün Ne Öğrenmek İstersiniz?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _ozgunKonuKarti('Gizlilik Ayarları 🔐', context),
            _ozgunKonuKarti('Şifre Güvencesi 🔑', context),
            _ozgunKonuKarti('Veri Koruma İpuçları 📜', context),
            _ozgunKonuKarti('Çocuklar için Dijital Güvenlik Eğitimi 📚', context), // Yeni buton
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Oyun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF3FA2E3),
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MiniOyun()),
            );
          }
          _onItemTapped(index);
        },
      ),
    );
  }

  Widget _sevimliKarti(String baslik, IconData ikon, Color renk) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5, offset: Offset(0, 3)),
          ],
        ),
        child: GestureDetector(
          onTap: () {
            if (baslik.contains('Güçlü Şifreler')) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SifreOlusturucuSayfa()));
            } else if (baslik.contains('Gizlilik Ayarları')) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacySettingsPage()));
            } else if (baslik.contains('Veri Koruma')) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DataProtectionPage()));
            } else if (baslik.contains('Anket')) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BullyingSurveyPage()));
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(ikon, size: 50, color: renk),
              SizedBox(height: 8),
              Text(baslik, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ozgunKonuKarti(String baslik, BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4,
      child: ListTile(
        title: Text(baslik, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          if (baslik.contains('Gizlilik Ayarları')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacySettingsPage()));
          } else if (baslik.contains('Şifre Güvencesi')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SifreGuvencesiSayfa()));
          } else if (baslik.contains('Veri Koruma')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DataProtectionPage()));
          } else if (baslik.contains('Dijital Güvenlik Eğitimi')) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChildSecurityEducation())); // Yeni yönlendirme
          }
        },
      ),
    );
  }
}
