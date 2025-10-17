// task_15.dart
import 'dart:io';

void main() {
  print('Enter a string to count character frequencies:');
  String input = stdin.readLineSync()!;
  
  Map<String, int> frequencyMap = {};
  
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    // Ignore spaces if you want
    if (char == ' ') continue;
    
    // If the character is already a key, increment its value, otherwise add it with value 1
    frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
  }
  
  print('Character frequencies:');
  frequencyMap.forEach((key, value) {
    print("'$key': $value");
  });
}