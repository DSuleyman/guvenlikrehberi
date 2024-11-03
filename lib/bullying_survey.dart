import 'package:flutter/material.dart';
import 'ana_sayfa.dart';

class BullyingSurveyPage extends StatefulWidget {
  @override
  _BullyingSurveyPageState createState() => _BullyingSurveyPageState();
}

class _BullyingSurveyPageState extends State<BullyingSurveyPage> {
  int score = 0;
  int questionIndex = 0;
  int? selectedOption;

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'İnternette zorbalıkla ilgili bir durumla karşılaştınız mı?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
    {
      'question': 'Bir arkadaşınıza kötü davranıldığını gördünüz mü?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
    {
      'question': 'Sosyal medyada zorbalık hakkında bir şeyler okudunuz mu?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
    {
      'question': 'Sanal ortamlarda kendinizi güvende hissediyor musunuz?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
    {
      'question': 'Daha önce zorbalığa uğramış birine yardım etmeyi düşündünüz mü?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
    {
      'question': 'Zorbalığın dijital ortamda yaygın olduğunu düşünüyor musunuz?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
    {
      'question': 'Birinin zorbalığa uğradığını gördüğünüzde müdahale eder misiniz?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
    {
      'question': 'Zorbalık ile ilgili bilgileri nereden ediniyorsunuz?',
      'options': [
        {'text': 'Arkadaşlarım', 'score': 5},
        {'text': 'Aile', 'score': 5},
        {'text': 'Medya', 'score': 5},
        {'text': 'Diğer', 'score': 0},
      ],
    },
    {
      'question': 'Zorbalık hakkında daha fazla bilgi edinmek ister misiniz?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
      ],
    },
    {
      'question': 'Dijital ortamda zorbalıkla ilgili bir farkındalığınız var mı?',
      'options': [
        {'text': 'Evet', 'score': 10},
        {'text': 'Hayır', 'score': 0},
        {'text': 'Bilmiyorum', 'score': 0},
      ],
    },
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
        title: Text('Dijital Zorbalık Anketi', style: TextStyle(fontFamily: 'Pacifico')),
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
                    return RadioListTile(
                      title: Text(
                        questions[questionIndex]['options'][index]['text'],
                        style: TextStyle(color: Colors.black87),
                      ),
                      value: index,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value as int?;
                        });
                      },
                      activeColor: Color(0xFF3FA2E3),
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
            Text('Anket Tamamlandı!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Puanınız: $score', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnaSayfa(score: score), // Skoru ana sayfaya gönderiyoruz
                  ),
                );
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
