class DataService {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['red', 'blue', 'green', 'yellow'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['dog', 'cat', 'horse', 'goat'],
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': ['couch', 'desk', 'pool', 'gym'],
    },
  ];

  int _qi = 0;

  List<Map<String, Object>> get questions {
    return this._questions;
  }

  int get size {
    return this._questions.length;
  }

  int get index {
    return this._qi;
  }

  set index(int index) {
    this.index = index;
  }

  Map<String, Object> getCurrentQuestion() {
    if (this._qi >= this._questions.length) {
      throw ('Index out of range');
    }
    return this._questions[this._qi];
  }

  String getCurrentQuestionText() {
    return getCurrentQuestion()['questionText'] as String;
  }

  List<String> getCurrentQuestionAnswers() {
    return getCurrentQuestion()['answers'] as List<String>;
  }

  void nextIndex() {
      this._qi == this._questions.length - 1 ? this._qi = 0 : this._qi++;
  }
}
