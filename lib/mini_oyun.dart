import 'package:flutter/material.dart';

class MiniOyun extends StatefulWidget {
  @override
  _MiniOyunState createState() => _MiniOyunState();
}

class _MiniOyunState extends State<MiniOyun> {
  int score = 0;
  int questionIndex = 0;
  int? selectedOption;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Şifrelerinizi ne sıklıkla değiştirirsiniz?',
      'options': [
        {'text': 'Her ay', 'score': 10},
        {'text': 'Her 3 ay', 'score': 5},
        {'text': 'Hiç değiştirmem', 'score': 0},
      ],
    },
    {
      'question': 'Karmaşık bir şifre kullanıyor musunuz?',
      'options': [
        {'text': 'Evet, özel karakterler de var', 'score': 10},
        {'text': 'Sadece harf ve rakamlar', 'score': 5},
        {'text': 'Hayır, çok basit bir şifre', 'score': 0},
      ],
    },
    {
      'question': 'İki faktörlü kimlik doğrulama kullanıyor musunuz?',
      'options': [
        {'text': 'Evet, her zaman kullanırım', 'score': 10},
        {'text': 'Bazen', 'score': 5},
        {'text': 'Hayır, kullanmıyorum', 'score': 0},
      ],
    },
    // Diğer sorular...
  ];

  void answerQuestion() {
    if (selectedOption != null) {
      setState(() {
        score += questions[questionIndex]['options'][selectedOption!]['score'] as int;
        questionIndex++;
        selectedOption = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dijital Güvenlik Oyunu', style: TextStyle(fontFamily: 'Pacifico')),
        backgroundColor: Color(0xFF3FA2E3),
      ),
      body: questionIndex < questions.length
          ? Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFF5E9),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  questions[questionIndex]['question'],
                  style: TextStyle(fontSize: 22, color: Colors.black87, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ...List.generate(
                  questions[questionIndex]['options'].length,
                      (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedOption == index ? Color(0xFF3FA2E3) : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: selectedOption == index ? Color(0xFF3FA2E3).withOpacity(0.1) : Colors.white,
                        ),
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          questions[questionIndex]['options'][index]['text'],
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: answerQuestion,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3FA2E3),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: Text('Cevapla', style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      )
          : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Oyun Tamamlandı!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Puanınız: $score', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Ana sayfaya geri döner
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3FA2E3),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: Text('Ana Sayfaya Git', style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
