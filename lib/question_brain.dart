import 'question_bank.dart';

class QuestionBrain {
  QuestionBank questionBank = QuestionBank();
  int currentQuestion = 0;
  bool quizEnded = false;
  int correct = 0;
  void nextQuestion() {
    if (currentQuestion == questionBank.numberOfQuestions - 1)
      quizEnded = true;
    else
      currentQuestion++;
  }

  void correctAnswer(int n) {
    if (n == questionBank.question[currentQuestion].getRightAnswer()) correct++;
  }

  double result() {
    return ((correct / questionBank.numberOfQuestions) * 100);
  }

  String getQuestion() => questionBank.question[currentQuestion].getQuestion();
  String getAnswers(int n) =>
      questionBank.question[currentQuestion].getAnswers(n);
  int getRightAnswer() =>
      questionBank.question[currentQuestion].getRightAnswer();
}
