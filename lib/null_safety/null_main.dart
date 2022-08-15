import 'cascade_user.dart';
import 'is_beautiful.dart';
import 'null_challenges.dart';

void nullMain() {
  String? profession;
  //profession = 'basketboll player';
  const iLove = 'Dart';
  print([profession.runtimeType]);
  print([iLove.runtimeType]);

  //If-null operator (??)
  String? message;
  final text = message ?? 'Error';
  print(text);

  //Null-aware assignment operator (??=)
  double? fontSize;
  fontSize ??= 20.0;
  print(fontSize);

  //Null-aware access operator (?.)
  int? age;
  print(age?.isNegative);

  //Null assertion operator (!)
  //bool flowerIsBeautiful = isBeautiful('flower')!; // ! or (as bool)
  bool flowerIsBeautiful = isBeautiful('flower') ?? true; // Safer
  print(flowerIsBeautiful);

  //Null-aware cascade operator (?..)
  // ignore: unused_local_variable
  CascadeUser cascadeUser = CascadeUser()
    ..name = 'Ray'
    ..id = 42;

  CascadeUser? cascadeNullUser; // Null User
  cascadeNullUser
    ?..name = 'Ray' //be executed if not null
    ..id = 42;

  //Null-aware index operator (?[])
  List<int>? myList = [1, 2, 3];
  myList = null;
  // ignore: unused_local_variable
  int? myItem = myList?[2]; //Null

  //Late - initialyze something in future when you get access first time

  print('\n');

  nullChallenge1();
  nullChallenge2();

  print('\n');
}
