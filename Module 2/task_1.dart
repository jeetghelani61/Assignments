// task_1.dart
import 'dart:io';

void main() {
  print('Please enter your name:');
  String? name = stdin.readLineSync();

  print('Please enter your age:');
  String? ageInput = stdin.readLineSync();
  
  if (name != null && ageInput != null) {
    int age = int.parse(ageInput);
    int yearsTo100 = 100 - age;
    
    print('Hello, $name! You have $yearsTo100 years until you turn 100. 🎉');
  }
}
