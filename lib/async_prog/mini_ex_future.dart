Future<void> miniExFuture() async {
  print('Starting miniExFuture()...');

  try {
    final message = await Future<String>.delayed(
      Duration(seconds: 2),
      () => 'I\'m from future',
    );
    print(message);
  } catch (exeption) {
    print(exeption);
  }
}
