import 'package:flutter/material.dart';


import 'package:gelismis_temeller/modeller/cevaplar_butonu.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, //olabildiğince geniş
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //.spaceAround sağ sol ön arkadan boşluklar
        children: [
          const Text(
            'Bir soru...',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'Cevap 1', 
            onTap: () {},
            ),  
            AnswerButton(
            answerText: 'Cevap 2', 
            onTap: () {},
            ),
            AnswerButton(
            answerText: 'Cevap 3', 
            onTap: () {},
            ),
        ],
      ),
    );
  }
}
