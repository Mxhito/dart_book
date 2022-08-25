void callBacks() {
  //Getting the result with callbacks
  print('Before the future');

  // ignore: unused_local_variable
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError(
        (error) => print('Error: $error'),
      )
      .whenComplete(
        () => print('Future is complete'),
      );

  print('After the future');
}
