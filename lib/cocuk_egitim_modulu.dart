import 'package:flutter/material.dart';

class ChildSecurityEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Çocuklar için Dijital Güvenlik Eğitimi'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dijital Güvenlik Nedir?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue), // Mavi başlık
            ),
            SizedBox(height: 10),
            Text(
              'Dijital güvenlik, internet ve teknoloji kullanırken kendimizi korumak için aldığımız önlemlerdir. '
                  'Çocuklar için dijital güvenlik eğitimi, güvenli internet alışkanlıklarını öğretmek için çok önemlidir.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Güvenli İnternet Kullanımı İpuçları:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue), // Mavi başlık
            ),
            SizedBox(height: 10),
            _ipucuItem('1. Gizli Bilgileri Paylaşmayın',
                'Adınızı, adresinizi veya telefon numaranızı kimseyle paylaşmayın.'),
            _ipucuItem('2. Güçlü Şifreler Kullanın',
                'Güçlü şifreler oluşturun ve kimseyle paylaşmayın.'),
            _ipucuItem('3. Şüpheli Bağlantılara Tıklamayın',
                'Tanımadığınız bağlantılara tıklamayın ve e-posta eklerini açmayın.'),
            _ipucuItem('4. Sosyal Medyada Dikkatli Olun',
                'Sosyal medyada paylaşımlarınıza dikkat edin ve gizlilik ayarlarınızı kontrol edin.'),
          ],
        ),
      ),
    );
  }

  Widget _ipucuItem(String baslik, String aciklama) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              baslik,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(aciklama, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
