import 'dart:math';

void nullChallenge1() {
  int? randomNothing() {
    final isTrue = Random().nextBool();
    return isTrue ? 42 : null;
  }

  final result = randomNothing() ?? 0;
  print(result);
}

void nullChallenge2() {
  final Name ilyaMokienko = Name(givenName: 'Ilya', surname: 'Mokienko');
  print(ilyaMokienko.toString());

  final Name mokienkoIlya =
      Name(givenName: 'Ilya', surname: 'Mokienko', surnameIsFirst: true);
  print(mokienkoIlya.toString());

  final Name ilya = Name(givenName: 'Ilya');
  print(ilya.toString());
}

class Name {
  Name({required this.givenName, this.surname, this.surnameIsFirst = false});

  String givenName;
  String? surname;
  bool surnameIsFirst;

  @override
  String toString() {
    if (surname == null) {
      return givenName;
    }
    return surnameIsFirst ? '$surname $givenName' : '$givenName $surname';
  }
}
