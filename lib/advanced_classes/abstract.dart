import 'mixin.dart';

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return 'I\'m a $runtimeType';
  }
}

class Platypus extends Animal with EggLayer implements Comparable {
  Platypus({required this.weight});

  double weight;

  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  @override
  int compareTo(other) {
    if (weight > other.weight) {
      return 1;
    } else if (weight < other.weight) {
      return -1;
    }
    return 0;
  }
}
