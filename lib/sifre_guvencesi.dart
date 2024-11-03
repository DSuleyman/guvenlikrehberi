import 'package:flutter/material.dart';

class SifreGuvencesiSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şifre Güvencesi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Şifre Güvencesi Nedir?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue), // Mavi başlık
            ),
            SizedBox(height: 16),
            Text(
              'Şifre güvencesi, hesaplarınızın güvenliğini sağlamak için güçlü şifrelerin kullanılması ve şifrelerin düzenli olarak değiştirilmesi anlamına gelir. Güçlü bir şifre, tahmin edilmesi zor ve karmaşık olmalıdır.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'İpuçları:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue), // Mavi başlık
            ),
            SizedBox(height: 8),
            Text(
              '1. En az 12 karakter uzunluğunda olmalıdır.\n'
                  '2. Büyük ve küçük harf, rakam ve sembol içermelidir.\n'
                  '3. Aynı şifreyi farklı hesaplarda kullanmaktan kaçının.\n'
                  '4. Şifre yöneticisi kullanarak şifrelerinizi güvenli bir şekilde saklayın.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
