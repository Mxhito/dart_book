import 'password.dart';
import 'sphere.dart';
import 'user.dart';
import 'email.dart';

void classesMain() {
  //unnamed constructor
  const user = User(id: 42, name: 'Ray');
  print(user.toString());

  //factory constructor
  // final ray = User.ray();
  // print(ray.toString());

  //named constructor
  const user3 = User.anonymous();
  print(user3.toString());

  //Validation Check
  //final user1 = User(id: -1, name: 'Ray');
  //print(user1.toString());

  //factory constructor
  // final map = {'id': 10, 'name': 'Manda'};
  // final manda = User.fromJson(map);
  // print(manda.toString());

  //unnamed constructor with definited field
  const password = Password();
  print(password.toString());

  //Getter
  // const ray1 = User(id: 42, name: 'Ray');
  // print(ray1.id); // 42
  // print(ray1.name); // Ray
  // print(ray1.isBigId); //false

  final email = Email('ray@example.com');
  final emailString = email.value;
  print(emailString);

  final anon = User();
  print(anon.toString());

  print('\n');

  // final bert = Student('Bert', 'Oz', 95);
  // final ernie = Student('Ernie', 'Ez', 85); //* Import classes/student.dart
  // print('$bert\n$ernie');

  // print('\n');

  final sphere = Sphere(radius: 12);
  final volume = sphere.volume;
  final area = sphere.area;
  print('volume: $volume, area: $area');

  print('\n');
}
