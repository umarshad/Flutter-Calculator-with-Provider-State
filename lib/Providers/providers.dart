import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ButtonState extends ChangeNotifier {
  String _userInput = '';
  String _answer = '';

  String get userInput => _userInput;
  String get answer => _answer;

  void updateInput(String input) {
    _userInput += input;
    notifyListeners();
  }

  void clearInput() {
    _userInput = '';
    _answer = '';
    notifyListeners();
  }

  void deleteInput() {
    if (_userInput.isNotEmpty) {
      _userInput = _userInput.substring(0, _userInput.length - 1);
      notifyListeners();
    }
  }

  void calculateResult() {
    String finalUserInput = _userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    _answer = eval.toString();
    notifyListeners();
  }
}
