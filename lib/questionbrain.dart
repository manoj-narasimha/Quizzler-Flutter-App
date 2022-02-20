import 'question.dart';

class QuestionBrain {
  // ignore: prefer_final_fields
  int _i = 0;

  // ignore: prefer_final_fields
  List<Question> _questionBank = [
    Question('You are 15 years old.', true),
    Question('You like cricket.', false),
    Question('You have a girlfriend.', false),
  ];

  void nextQuestion() {
    if (_i < _questionBank.length - 1) {
      _i++;
    }
  }

  String getQuestionText() {
    return _questionBank[_i].questionText;
  }

  bool getAnswerText() {
    return _questionBank[_i].questionAnswer;
  }

  bool isFinished() {
    if (_i >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _i = 0;
  }
}
