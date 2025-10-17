// task_25.dart
import 'dart:async';

void main() async {
  print('Loading data...');
  
  // Wait for 3 seconds
  await Future.delayed(Duration(seconds: 3));
  
  print('Data loaded successfully! ');
}