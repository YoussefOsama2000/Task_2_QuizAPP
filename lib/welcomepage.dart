import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_widgets.dart';
import 'quiz_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF051C22),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
                child: Image(
                  image: AssetImage('assets/imgs/EPLogo.png'),
                  isAntiAlias: true,
                ),
              ),
              CustomButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return QuizPage();
                  }));
                },
                textString: 'Start Quiz!',
                fillingColor: Colors.teal,
              ),
              CustomButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                textString: 'end app',
                borderColor: Colors.teal.withOpacity(0.2),
                textStyle: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
      ),
    );
  }
}
