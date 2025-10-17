// task_22.dart
import 'dart:io';

void main() {
  print('Enter the name of the file to read (e.g., test.txt):');
  String? filename = stdin.readLineSync();

  try {
    if (filename != null && filename.isNotEmpty) {
      File file = File(filename);
      String contents = file.readAsStringSync();
      print('File Contents:\n$contents');
    } else {
        print('No filename entered.');
    }
  } on FileSystemException catch (e) {
    // This catches file not found and other file system errors
    print('Error: Could not read the file. File not found or permission denied.');
    print('Details: ${e.message}');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}