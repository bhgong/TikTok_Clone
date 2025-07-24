import 'package:flutter/material.dart';

class TutorialStep {
  final String text;
  final Offset? position;

  TutorialStep({required this.text, this.position});
}

class TutorialController extends ChangeNotifier {
  int _currentStep = 0;
  bool _isShowingTutorial = false;

  final List<TutorialStep> steps = [
    TutorialStep(text: "첫 번째 단계입니다"),
    TutorialStep(text: "두 번째 단계입니다"),
    TutorialStep(text: "마지막 단계입니다"),
  ];

  int get currentStep => _currentStep;
  bool get isShowingTutorial => _isShowingTutorial;

  void startTutorial() {
    _isShowingTutorial = true;
    _currentStep = 0;
    notifyListeners();
  }

  void nextStep() {
    if (_currentStep < steps.length - 1) {
      _currentStep++;
    } else {
      _isShowingTutorial = false;
      _currentStep = 0;
    }
    notifyListeners();
  }
}
