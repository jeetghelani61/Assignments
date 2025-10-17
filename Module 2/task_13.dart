// task_13.dart
void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Original list: $numbers');

  // Ascending Sort
  List<int> ascending = List.from(numbers);
  for (int i = 0; i < ascending.length - 1; i++) {
    for (int j = 0; j < ascending.length - i - 1; j++) {
      if (ascending[j] > ascending[j + 1]) {
        int temp = ascending[j];
        ascending[j] = ascending[j + 1];
        ascending[j + 1] = temp;
      }
    }
  }
  print('Sorted in ascending order: $ascending');

  // Descending Sort
  List<int> descending = List.from(numbers);
  for (int i = 0; i < descending.length - 1; i++) {
    for (int j = 0; j < descending.length - i - 1; j++) {
      if (descending[j] < descending[j + 1]) {
        int temp = descending[j];
        descending[j] = descending[j + 1];
        descending[j + 1] = temp;
      }
    }
  }
  print('Sorted in descending order: $descending');
}