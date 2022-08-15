enum Grades { A, B, C, D, F }

class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  void doSomeWork() {
    print('Person is working');
  }

  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(super.givenName, super.surname);

  var grades = <Grades>[];

  @override
  void doSomeWork() {
    super.doSomeWork(); //* works first, move it to the end if necessary
    print('$fullName is studying');
  }

  //Overriding parent methods
  @override
  String get fullName => '$surname $givenName';
}

//Multi-level hierarchy
class SchoolBandMember extends Student {
  SchoolBandMember(super.givenName, super.surname);

  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(super.givenName, super.surname);

  bool get isEligible => grades.every((grade) => grade != Grades.F);
}
