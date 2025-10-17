import 'dart:io';

void main() async {
  final fileName = 'example.txt';

  // Writing data to file
  await writeToFile(fileName, 'Hello, Dart File IO!');

  // Reading data from file
  await readFromFile(fileName);
}

Future<void> writeToFile(String fileName, String content) async {
  try {
    final file = File(fileName);
    await file.writeAsString(content);
    print('Data written to $fileName successfully.');
  } catch (e) {
    print('Error writing to file: $e');
  }
}

Future<void> readFromFile(String fileName) async {
  try {
    final file = File(fileName);

    // Check if file exists
    if (await file.exists()) {
      String contents = await file.readAsString();
      print('File content: $contents');
    } else {
      print('File $fileName does not exist.');
    }
  } catch (e) {
    print('Error reading from file: $e');
  }
}
