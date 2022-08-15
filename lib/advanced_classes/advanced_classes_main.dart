// ignore_for_file: unused_import

import 'dart:convert';

import 'inheritance.dart';
import 'mini_ex_inheritance.dart';
import 'abstract.dart';
import 'interfaces.dart';
import 'mini_ex_interfaces.dart';
import 'mixin.dart';
import 'mini_ex_mixin.dart';
import 'extension_methods.dart';
import 'advanced_classes_challenges.dart';

void advancedClassesMain() {
  //* Extending classes (Inheritance)
  final jon = Person('Jon', 'Snow');
  print(jon.fullName);

  //Overriding parent methods
  final jane = Student('Jane', 'Snow');
  print(jane.fullName);

  final historyGrade = Grades.B;
  jane.grades.add(historyGrade);

  print(jane.grades);

  print('\n');

  final child = Student('Ilya', 'Mokienko');
  child.doSomeWork();

  print('\n');

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');

  // ignore: unused_local_variable
  final students = [jane, jessie, marty];

  // ignore: unnecessary_type_check
  print(jessie is Object);

  print('\n');

  //Mini-exercises
  miniExInheritance();

  print('\n');

  //* Abstract classes
  //So at compile time, Dart treats platypus like an Animal even though at runtime Dart knows it’s a Platypus
  //Animal platypus = Platypus();
  // print(platypus.isAlive);
  // platypus.eat();
  // platypus.move();
  // platypus.layEggs();
  // print(platypus);

  print('\n');

  //* Interfaces
  final repository = DataRepository();
  final temperature = repository.fetchTemperature('Kiev');
  print(temperature);

  print('\n');

  // final someClass = SomeClass();
  // print(someClass.myField);
  // someClass.myMethod();

  // print('\n');

  //Mini-exercises
  miniExInterfaces();

  print('\n');

  //*MIxin
  // final platypusMixin = Platypus();
  // final robin = Robin();
  // platypusMixin.layEggs();
  // robin.layEggs();

  //Mini-exercises
  miniExMixin();

  print('\n');

  //*Extension methods
  extensionMethods();

  print('\n');

  //Challenges
  advClassesEx1();

  print('\n');

  advClassesEx2();

  print('\n');

  advClassesEx3();
}
