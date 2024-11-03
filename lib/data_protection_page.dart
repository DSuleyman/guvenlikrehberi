import 'package:flutter/material.dart';

class DataProtectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veri Koruma"),
        backgroundColor: Color(0xFF3FA2E3), // Ana renk
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle("Veri Koruma Nedir?", Color(0xFF3FA2E3)), // Başlık rengi güncellendi
            _sectionContent(
              "Veri koruma, kişisel verilerin toplanması, işlenmesi ve saklanması sürecinin güvenliğini sağlama yöntemlerini ifade eder. "
                  "Bu, bireylerin kişisel bilgilerinin kötüye kullanılmasını önlemek için önemlidir.",
              Colors.black54,
            ),
            SizedBox(height: 16.0),
            _sectionTitle("Neden Veri Koruma Önemlidir?", Color(0xFF3FA2E3)), // Başlık rengi güncellendi
            _sectionContent(
              "Veri koruma, kullanıcıların kişisel verilerini koruyarak onların mahremiyetini sağlar. "
                  "Kişisel verilerin kötüye kullanılması, dolandırıcılık, kimlik hırsızlığı gibi ciddi sonuçlara yol açabilir.",
              Colors.black54,
            ),
            SizedBox(height: 16.0),
            _sectionTitle("Veri Koruma Önlemleri", Color(0xFF3FA2E3)), // Başlık rengi güncellendi
            _sectionContent("Aşağıdaki önlemleri alarak veri korumanızı artırabilirsiniz:", Colors.black54),
            _privacyOption("Veri Şifreleme", "Verilerinizi şifreleyerek koruma altına alın."),
            _privacyOption("Erişim Kontrolü", "Verilerinize kimlerin erişebileceğini kontrol edin."),
            _privacyOption("Veri Yedekleme", "Verilerinizi düzenli olarak yedekleyin."),
            _privacyOption("Veri Minimizasyonu", "Sadece gerekli olan verileri toplayın."),
            SizedBox(height: 16.0),
            _sectionTitle("Veri Koruma Yasal Düzenlemeleri", Color(0xFF3FA2E3)), // Başlık rengi güncellendi
            _sectionContent(
              "Günümüzde birçok ülkede veri koruma yasaları bulunmaktadır. Örneğin, Avrupa Birliği'nde yürürlükte olan GDPR, kişisel verilerin korunmasına yönelik katı kurallar getirir.",
              Colors.black54,
            ),
            SizedBox(height: 16.0),
            _sectionTitle("Veri Koruma Hakkında Bilinmesi Gerekenler", Color(0xFF3FA2E3)), // Başlık rengi güncellendi
            _sectionContent(
              "Veri koruma ile ilgili bilmeniz gereken bazı önemli noktalar:\n"
                  "- Kişisel verilerinizi yalnızca gerekli olduğu durumlarda paylaşın.\n"
                  "- Verilerinizi korumak için güvenilir kaynaklardan yardım alın.\n"
                  "- Gizlilik politikalarını dikkatlice okuyun.",
              Colors.black54,
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color),
      ),
    );
  }

  Widget _sectionContent(String content, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        content,
        style: TextStyle(fontSize: 16, color: color),
      ),
    );
  }

  Widget _privacyOption(String title, String description) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      child: ListTile(
        title: Text(title, style: TextStyle(color: Color(0xFF3FA2E3))),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward, color: Color(0xFF3FA2E3)),
        onTap: () {
          // Buraya tıklanıldığında yapılacak işlemler
        },
      ),
    );
  }
}
