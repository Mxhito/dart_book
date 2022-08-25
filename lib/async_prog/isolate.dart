import 'dart:isolate';

Future<void> isolate() async{
  print("OK, I'm counting...");

  //1 You created a receive port to listen for messages from the new isolate.
  final receivePort = ReceivePort();

  //2 Next, you spawned a new isolate and gave it two arguments.
  final isolate = await Isolate.spawn(
    playHideAndSeekTheLongVersion,
    //3 The receivePort has a sendPort that belongs to it.
    receivePort.sendPort,
  );
  //4 Finally, receivePort.listen gets a callback whenever sendPort sends a message.
  receivePort.listen((message) {
    print(message);
    //5 In this example, the isolate is no longer needed after the work is done, so you can close the receive port and kill the isolate to free up the memory.
    receivePort.close();
    isolate.kill();
  });
  //* The Flutter framework has a highly simplified way to start a new isolate, perform some work, and then return the result using a function called compute.
  //* In my case: await compute(playHideAndSeekTheLongVersion, 10000000000); 10000000000 - the number which you need count to
}

void playHideAndSeekTheLongVersion(SendPort sendPort) {
  var counting = 0;
  for (var i = 0; i < 10000000000; i++) {
    counting = i;
  }
  sendPort.send('$counting! Ready or not, here I come');
}
