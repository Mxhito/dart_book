import 'abstract.dart';

//Heavy monotremes
void advClassesEx1() {
  final willi = Platypus(weight: 1.0);
  final billi = Platypus(weight: 2.4);
  final nilli = Platypus(weight: 2.1);
  final jilli = Platypus(weight: 0.4);
  final silli = Platypus(weight: 1.7);

  final platypi = [willi, billi, nilli, jilli, silli];

  for (var platypus in platypi) {
    print(platypus.weight);
  }
  print('---');

  platypi.sort();
  for (var platypus in platypi) {
    print(platypus.weight);
  }
}

////////////////////////////////////////////////////////////////////////////////
//Fake notes
abstract class DataStorage {
  factory DataStorage() => FakeDatabase();

  String findNote(int id);
  List<String> allNotes();
  void saveNote(String note);
}

class FakeDatabase implements DataStorage {
  @override
  List<String> allNotes() {
    return [
      'This is a note.',
      'This is another note.',
      'Buy milk.',
      'Platypuses are nice.',
    ];
  }

  @override
  String findNote(int id) {
    return 'This is note';
  }

  @override
  void saveNote(String note) {
    print('$note saving to cyberspace....');
  }
}

void advClassesEx2() {
  final database = DataStorage();
  final note = database.findNote(42);
  final allNotes = database.allNotes();
  database.saveNote('I almost did it.');

  print(note);
  print(allNotes);
}

////////////////////////////////////////////////////////////////////////////////
//Time to code
extension on int {
  Duration get minutes => Duration(minutes: this);
}

void advClassesEx3() {
  final timeRemaining = 3.minutes;
  print(timeRemaining);
}
