// task_11.dart
import 'dart:io';

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print('Enter the number of Fibonacci terms to generate:');
  int count = int.parse(stdin.readLineSync()!);
  
  print('Fibonacci Series:');
  for (int i = 0; i < count; i++) {
    print(fibonacci(i));
  }
}