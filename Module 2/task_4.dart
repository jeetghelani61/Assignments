// task_4.dart
import 'dart:io';
import 'dart:math';

void main() {
  const double pi = 3.14159;
  
  print('Enter the radius of the circle:');
  double radius = double.parse(stdin.readLineSync()!);
  
  double area = pi * pow(radius, 2);
  double circumference = 2 * pi * radius;
  
  print('The area of the circle is: ${area}');
  print('The circumference of the circle is: ${circumference}');
}