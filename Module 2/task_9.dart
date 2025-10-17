// task_9.dart
import 'dart:io';

int calculateFactorial(int n) {
  if (n < 0) {
    return 0; // Factorial is not defined for negative numbers
  }
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  return factorial;
}

void main() {
  print('Enter a number to calculate its factorial:');
  int number = int.parse(stdin.readLineSync()!);
  
  int result = calculateFactorial(number);
  
  if (result == 0) {
      print('Cannot calculate factorial for a negative number.');
  } else {
      print('The factorial of $number is $result.');
  }
}