// task_14.dart
void main() {
  List<String> words = ['apple', 'banana', 'cherry', 'apple', 'date', 'banana'];
  print('Original list of words: $words');
  
  // Use a Set to automatically remove duplicates
  Set<String> uniqueWordsSet = Set<String>.from(words);
  
  // Convert back to a List to sort it
  List<String> uniqueWordsList = uniqueWordsSet.toList();
  uniqueWordsList.sort(); // Use built-in sort for alphabetical order
  
  print('Unique words in alphabetical order: $uniqueWordsList');
}