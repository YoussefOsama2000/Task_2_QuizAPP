class Question {
  String _qusetionText;
  List<String> _answers = [];
  int _answerNum;
  Question(this._qusetionText, String first, String second, String third,
      String fourth, this._answerNum) {
    _answers.addAll([first, second, third, fourth]);
  }
  String getQuestion() => _qusetionText;
  String getAnswers(int n) => _answers[n];
  int getRightAnswer() => _answerNum;
}

class QuestionBank {
  List<Question> question = [];
  final int numberOfQuestions = 5; //from 0 to 4
  QuestionBank() {
    question.addAll([
      Question('sun raise\'s from', 'east', 'west', 'north',
          'non of the above...', 1),
      Question('2+2', '6', 'tan(2x+y)', 'undefined', '2*2', 4),
      Question('fine thanks', 'what is your name?', 'how old are you?',
          'how do you do ?', 'how are you ?', 4),
      Question('your grand father son is', 'your sister', 'your uncle',
          'your uncle', 'does n\'t relate to you', 2),
      Question('this is question number...', '1+1*2', '2', '(29/2)*58',
          'sin(180)*4', 3)
    ]);
  }
}
