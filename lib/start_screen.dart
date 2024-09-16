import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});


  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         Image.asset(
              'assets/images/quiz-logo.png',
              width: 400,
              color: const Color.fromARGB(138, 255, 254, 254),
            ),

          // Opacity(
          //   opacity: 0.2,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ), opaklık yorar renk ayarlayabileceğiniz bir widget'ınız olduğunda, opaklık kullanmaktan daha iyi bir yaklaşım mevcut yukarda yazıyor.
          const SizedBox(height: 80),
          const Text(
            'Flutter\'a başladım =)',
            style: TextStyle(
              color: Color.fromARGB(255, 244, 233, 34),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style:  OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.bolt),
          label: const Text('Sınava hazırım!'),
          )
        ],
      ),
    );
  }
}
