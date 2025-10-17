import 'dart:async';

Stream<int> numberStream(int maxCount) async* {
  for (int i = 1; i <= maxCount; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

void main() async {
  int limit = 5;

  await for (int number in numberStream(limit)) {
    print('Received: $number');
  }
  print('Stream completed after $limit numbers.');
}
