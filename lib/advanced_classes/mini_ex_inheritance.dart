class Fruit {
  Fruit(this.color);
  String color;

  void describeColor() {
    print('Fruit\'s color is $color');
  }
}

class Melon extends Fruit {
  Melon(super.color);

  @override
  describeColor() {
    print('Melon\'s color is $color');
  }
}

class Watermelon extends Melon {
  Watermelon(super.color);

  @override
  describeColor() {
    print('Watermelon\'s color is $color');
  }
}

class Cantaloupe extends Melon {
  Cantaloupe(super.color);

  @override
  describeColor() {
    print('Cantaloupe\'s color is $color');
  }
}

void miniExInheritance() {
  final fruit = Fruit('yellow');
  fruit.describeColor();

  final melon = Melon('blue');
  final watermelon = Watermelon('red and green');
  final cantaloupe = Cantaloupe('orange');
  melon.describeColor();
  watermelon.describeColor();
  cantaloupe.describeColor();
}
