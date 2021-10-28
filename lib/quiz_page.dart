import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'question_brain.dart';
import 'custom_widgets.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuestionBrain questionBrain = QuestionBrain();
  bool choosingState = false;
  int chosenAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Color(0x009688FF),
          leading: Container(),
          title: Text('QUIZ'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.2),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    questionBrain.getQuestion(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                CustomButton(
                  borderColor:
                      chosenAnswer == 1 ? Colors.yellow : Colors.transparent,
                  fillingColor: !choosingState
                      ? Colors.black.withOpacity(0.1)
                      : questionBrain.getRightAnswer() == 1
                          ? Colors.green
                          : Colors.red,
                  textString: questionBrain.getAnswers(0),
                  textStyle: TextStyle(color: Colors.white, fontSize: 25),
                  onPressed: () {
                    setState(() {
                      choosingState = true;
                      chosenAnswer = 1;
                    });
                  },
                ),
                CustomButton(
                  borderColor:
                      chosenAnswer == 2 ? Colors.yellow : Colors.transparent,
                  fillingColor: !choosingState
                      ? Colors.black.withOpacity(0.1)
                      : questionBrain.getRightAnswer() == 2
                          ? Colors.green
                          : Colors.red,
                  textString: questionBrain.getAnswers(1),
                  textStyle: TextStyle(color: Colors.white, fontSize: 25),
                  onPressed: () {
                    setState(() {
                      choosingState = true;
                      chosenAnswer = 2;
                    });
                  },
                ),
                CustomButton(
                  borderColor:
                      chosenAnswer == 3 ? Colors.yellow : Colors.transparent,
                  fillingColor: !choosingState
                      ? Colors.black.withOpacity(0.1)
                      : questionBrain.getRightAnswer() == 3
                          ? Colors.green
                          : Colors.red,
                  textString: questionBrain.getAnswers(2),
                  textStyle: TextStyle(color: Colors.white, fontSize: 25),
                  onPressed: () {
                    setState(() {
                      choosingState = true;
                      chosenAnswer = 3;
                    });
                  },
                ),
                CustomButton(
                  borderColor:
                      chosenAnswer == 4 ? Colors.yellow : Colors.transparent,
                  fillingColor: !choosingState
                      ? Colors.black.withOpacity(0.1)
                      : questionBrain.getRightAnswer() == 4
                          ? Colors.green
                          : Colors.red,
                  textString: questionBrain.getAnswers(3),
                  textStyle: TextStyle(color: Colors.white, fontSize: 25),
                  onPressed: () {
                    setState(() {
                      choosingState = true;
                      chosenAnswer = 4;
                    });
                  },
                ),
                SizedBox(
                  height: 90,
                  child: TextButton(
                    onPressed: choosingState
                        ? () {
                            questionBrain.correctAnswer(chosenAnswer);
                            setState(() {
                              questionBrain.nextQuestion();
                              if (questionBrain.quizEnded == true)
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return ResultPage(
                                      result: questionBrain.result());
                                }));
                              choosingState = false;
                              chosenAnswer = 0;
                            });
                          }
                        : () {},
                    child: choosingState
                        ? Text(
                            'NEXT',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )
                        : Text(''),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        Fluttertoast.showToast(msg: 'come on!  \n finish all questions first');
        return false;
      },
    );
  }
}
