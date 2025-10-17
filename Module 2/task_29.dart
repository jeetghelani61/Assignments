// task_29.dart
void main() {
  List<int> list1 = [1, 3, 5, 7, 9];
  List<int> list2 = [2, 4, 6, 8, 1]; // Contains a duplicate '1'
  List<int> list3 = [5, 10, 15]; // Contains a duplicate '5'

  // Use the spread operator '...' to combine lists
  List<int> combinedList = [...list1, ...list2, ...list3];
  print('Combined list with duplicates: $combinedList');
  
  // Use a Set to remove duplicates and convert back to a List
  List<int> uniqueList = combinedList.toSet().toList();
  
  // Sort the list in ascending order
  uniqueList.sort();
  
  print('Final sorted list without duplicates: $uniqueList');
}