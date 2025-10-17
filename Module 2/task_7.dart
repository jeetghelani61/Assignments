// task_7.dart
import 'dart:io';

void main() {
  print('Enter a number to check if it is prime:');
  int number = int.parse(stdin.readLineSync()!);
  bool isPrime = true;

  if (number <= 1) {
    isPrime = false;
  } else {
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
  }
  
  if (isPrime) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }
}