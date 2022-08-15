mixin Adder {
  void sum(num a, num b) {
    print('sum is ${a + b}');
  }
}

class Calculator with Adder {}

void miniExMixin() {
  final calculator = Calculator();
  calculator.sum(2, 2);
}
