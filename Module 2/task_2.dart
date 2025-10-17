// simple_converter.dart
import 'dart:io';

void main() {
  // Ask the user for input in Celsius
  print('Enter temperature in Celsius:');

  // Read the input and convert it from a String to a double
  String? input = stdin.readLineSync();
  double celsius = double.parse(input!);

  // Calculate the temperature in Fahrenheit
  double fahrenheit = (celsius * 9 / 5) + 32;

  // Print the final result, formatted to two decimal places
  print('$celsius°C is equal to ${fahrenheit.toStringAsFixed(2)}°F.');
}