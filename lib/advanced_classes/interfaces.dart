abstract class DataRepository {
  factory DataRepository() => FakeWebService();

  double? fetchTemperature(String city);
}

class FakeWebService implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

// class AnotherClass {
//   int myField = 42;
//   void myMethod() => print(myField);
// }

// class SomeClass implements AnotherClass {
//   @override
//   int myField = 0;

//   @override
//   void myMethod() => print('Hello');
// }
