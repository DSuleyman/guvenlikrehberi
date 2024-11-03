import 'package:flutter/material.dart';

class PrivacySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gizlilik Ayarları'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gizlilik İpuçları',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue), // Mavi başlık
            ),
            SizedBox(height: 10),
            Text(
              '1. Güçlü Parolalar Kullanın:'
                  '\nParolanız, harf, rakam ve özel karakterlerin birleşiminden oluşmalıdır. Uzun ve karmaşık parolalar kullanmaya özen gösterin.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '2. Gizlilik Ayarlarını Kontrol Edin:'
                  '\nSosyal medya hesaplarınızın gizlilik ayarlarını düzenli olarak kontrol edin ve paylaşımlarınızı kimlerin görebileceğini ayarlayın.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '3. Bilgilerinizi Paylaşmadan Önce Düşünün:'
                  '\nHangi bilgilerinizi paylaştığınıza dikkat edin. Özel bilgilerinizi herkese açık alanlarda paylaşmayın.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '4. Güvenilir Uygulamalar Kullanın:'
                  '\nUygulama indirmeden önce yorumlarını kontrol edin ve güvenilir kaynaklardan indirildiğinden emin olun.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '5. Düzenli Olarak Güncelleyin:'
                  '\nCihazlarınızın yazılımını ve uygulamalarını düzenli olarak güncelleyerek güvenlik açıklarını kapatın.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
