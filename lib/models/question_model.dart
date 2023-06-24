class Question{
  final String id;
  final String title;
  final Map<String,bool> options; // options are like - {'1':true, '2':false} etc

  Question({
    required this.id, required this.title, required this.options
  });

  @override
  String toString() {
    return 'Question(id: $id, title: $title, options: $options)';
  }
}