import 'package:flutter/material.dart';

class PrivacySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gizlilik Ayarları"),
        backgroundColor: Color(0xFF3FA2E3), // Ana renk
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle("Gizlilik Nedir?", Colors.blue), // Mavi başlık
            _sectionContent(
              "Gizlilik, bireylerin kişisel bilgilerinin, verilerinin ve iletişimlerinin korunmasını ifade eder. "
                  "Dijital dünyada gizlilik, kullanıcıların kendi bilgilerini kimin gördüğünü ve bu bilgilerin nasıl kullanıldığını kontrol etme hakkını içerir.",
              Colors.black54,
            ),
            SizedBox(height: 16.0),
            _sectionTitle("Neden Gizlilik Önemlidir?", Colors.blue), // Mavi başlık
            _sectionContent(
              "Gizlilik, sadece kişisel bilgilerimizin korunması değil, aynı zamanda dijital kimliğimizin güvenliği için de kritik öneme sahiptir.",
              Colors.black54,
            ),
            SizedBox(height: 16.0),
            _sectionTitle("Gizlilik Ayarlarını Yönetme", Colors.blue), // Mavi başlık
            _sectionContent("Aşağıdaki ayarları kullanarak gizliliğinizi yönetebilirsiniz:", Colors.black54),
            _privacyOption("Veri Paylaşım Ayarları", "Verilerinizi kimlerle paylaşmak istediğinizi seçin."),
            _privacyOption("Reklam Tercihleri", "Size özel reklamlar almak için tercihlerinizi ayarlayın."),
            _privacyOption("Konum Hizmetleri", "Uygulamanın konumunuzu kullanmasına izin verin veya verin."),
            _privacyOption("Hesap Güvenliği", "Hesabınızın güvenliğini artırmak için iki adımlı doğrulamayı etkinleştirin."),
            SizedBox(height: 16.0),
            _sectionTitle("Gizliliğinizi Koruyun", Colors.blue), // Mavi başlık
            _sectionContent(
              "Gizliliğinizi korumak için aşağıdaki ipuçlarını dikkate alabilirsiniz:\n"
                  "- Güçlü ve benzersiz şifreler kullanın.\n"
                  "- İki adımlı doğrulamayı etkinleştirin.\n"
                  "- Gizlilik ayarlarınızı düzenli olarak kontrol edin.\n"
                  "- Kişisel bilgilerinizi paylaşırken dikkatli olun.",
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
        title: Text(title, style: TextStyle(color: Color(0xFF0C9275))),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward, color: Color(0xFF3FA2E3)),
        onTap: () {
          // Buraya tıklanıldığında yapılacak işlemler
        },
      ),
    );
  }
}
