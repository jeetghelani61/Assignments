// task_24.dart
import 'dart:io';

void main() {
  print('Enter a list of integers, separated by commas (e.g., 1,2,3):');
  String? input = stdin.readLineSync();
  List<int> numbers = [];

  if (input != null && input.isNotEmpty) {
    List<String> stringNumbers = input.split(',');
    
    for (String s in stringNumbers) {
      try {
        numbers.add(int.parse(s.trim()));
      } on FormatException {
        print('Skipping invalid input: "$s" is not an integer.');
      }
    }
    
    print('The valid integers you entered are: $numbers');
  } else {
    print('No input provided.');
  }
}