class Note {
  String title;
  String content;
  DateTime date;

  Note({this.title, this.content, this.date});
}

final Map<String, int> categories = {
  'Drinking': 112,
  'Eating': 58,
  'Sleep': 23,
  'Activity': 31,
};

final List<Note> notes = [
  Note(
    title: 'Sleeping Less',
    content: 'Our Dog has began to sleep significantly less and often looks tired',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
  Note(
    title: 'Walk with dog',
    content: 'The walk started fine, but our dog immediately showedd a lack of interest and laziness',
    date: DateTime(2019, 10, 10, 8, 30),
  ),
];