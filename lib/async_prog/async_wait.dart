Future<void> asyncWait() async {
  print('Before the future');

  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 1),
      () => 42,
    );
    //throw Exception('There was an error');
    print('Value: $value');
  } catch (error) {
    print(error);
  } finally {
    print('Future is complite');
  }

  print('After the future');

  //Asynchronous network requests
}
