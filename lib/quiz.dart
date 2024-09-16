import 'package:flutter/material.dart';

import 'package:gelismis_temeller/start_screen.dart';
import 'package:gelismis_temeller/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
 var aktifEkran = 'başlangıç-ekranı';

 void ekranDegistirme() {
  setState(() {
    aktifEkran = 'soru-ekranı';
  });
 }

@override 
Widget build(context) {
 Widget ekranWidgeti = StartScreen(ekranDegistirme);

if (aktifEkran == 'soru-ekranı') {
  ekranWidgeti = const QuestionsScreen();
}

// final ekranWidgeti =  aktifEkran == 'başlangıç-ekranı'
//           ? StartScreen(ekranDegistirme)
//           : const QuestionsScreen() ;

  return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const
           BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          child: ekranWidgeti,
          ),
      ),
    );
}
}
