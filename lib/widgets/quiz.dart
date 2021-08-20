import 'package:ac_00_complete_guide/services/data_service.dart';
import 'package:ac_00_complete_guide/widgets/answer_button.dart';
import 'package:ac_00_complete_guide/widgets/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  
  final DataService _dataService = DataService();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: this._buildQuestion(context),
    );
  }

  List<Widget> _buildQuestion(BuildContext context) {
    return <Widget>[
      Question(
        text: this._dataService.getCurrentQuestionText(),
      ),
      ..._buildAnswerButtons(context, this._dataService.getCurrentQuestionAnswers()),
    ];
  }

  List<Widget> _buildAnswerButtons(BuildContext context, List<String> answers) {
    return answers
        .map((a) => AnswerButton(
              child: Text(a),
              onPressed: this._handleAnswer,
            ))
        .toList();
  }

  void _handleAnswer() {
    setState(() {
      this._dataService.nextIndex();
    });
    print('Question is answered: ${this._dataService.index}');
  }
}
