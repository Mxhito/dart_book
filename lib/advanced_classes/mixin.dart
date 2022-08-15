mixin EggLayer {
  void layEggs() {
    print('Plop Plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh Swoosh');
  }
}

abstract class Bird {}

class Robin extends Bird with EggLayer, Flyer {}
