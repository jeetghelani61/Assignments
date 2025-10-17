// task_21.dart
import 'dart:io';

void main() {
  try {
    print('Enter the numerator:');
    int numerator = int.parse(stdin.readLineSync()!);
    
    print('Enter the denominator:');
    int denominator = int.parse(stdin.readLineSync()!);
    
    if (denominator == 0) {
      print
    }
    
    int result = numerator ~/ denominator; // Integer division
    print('Result of division is: $result');
    
  } 
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}