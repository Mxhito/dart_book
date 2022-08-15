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
