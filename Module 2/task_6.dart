// task_6.dart
import 'dart:io';

void main() {
  print('Enter the student\'s score (0-100):');
  int score = int.parse(stdin.readLineSync()!);
  
  String grade;
  
  if (score >= 90 && score <= 100) {
    grade = 'A';
  } else if (score >= 80 && score < 90) {
    grade = 'B';
  } else if (score >= 70 && score < 80) {
    grade = 'C';
  } else if (score >= 60 && score < 70) {
    grade = 'D';
  } else if (score >= 0 && score < 60) {
    grade = 'F';
  } else {
    grade = 'Invalid Score';
  }
  
  print('The student\'s grade is: $grade');
}