// task_12.dart
Map<String, int> findMinMax(List<int> numbers) {
  if (numbers.isEmpty) {
    return {};
  }
  
  int smallest = numbers[0];
  int largest = numbers[0];
  
  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
    if (number > largest) {
      largest = number;
    }
  }
  
  return {'smallest': smallest, 'largest': largest};
}

void main() {
  List<int> numberList = [12, 45, 7, 89, 23, 56, 1, 99];
  Map<String, int> result = findMinMax(numberList);
  
  if (result.isNotEmpty) {
    print('From the list: $numberList');
    print('The smallest number is: ${result['smallest']}');
    print('The largest number is: ${result['largest']}');
  } else {
    print('The list is empty.');
  }
}