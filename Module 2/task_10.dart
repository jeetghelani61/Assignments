// task_10.dart
import 'dart:io';

bool isPalindrome(String text) {
  // Clean the string: remove spaces and convert to lowercase
  String cleanedText = text.replaceAll(' ', '').toLowerCase();
  String reversedText = cleanedText.split('').reversed.join('');
  return cleanedText == reversedText;
}

void main() {
  print('Enter a string to check if it is a palindrome:');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    if (isPalindrome(input)) {
      print('"$input" is a palindrome.');
    } else {
      print('"$input" is not a palindrome.');
    }
  }
}