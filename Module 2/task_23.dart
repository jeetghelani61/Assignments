// task_23.dart
import 'dart:io';

void main() {
  while (true) {
    try {
      print('Enter the first number (or "exit" to quit):');
      String? input1 = stdin.readLineSync();
      if (input1?.toLowerCase() == 'exit') break;
      
      double num1 = double.parse(input1!);
      
      print('Enter the second number:');
      double num2 = double.parse(stdin.readLineSync()!);

      double sum = num1 + num2;
      print('The sum is: $sum');

    } on FormatException {
      print('Invalid input! Please enter numbers only. Let\'s try again.');
    } catch (e) {
      print('An unexpected error occurred: $e');
    }
  }
}