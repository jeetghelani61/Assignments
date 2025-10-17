import 'dart:io';


void main() {
  final random = Random();
  int target = random.nextInt(100) + 1; // Random number between 1 and 100

  print('Guess the number between 1 and 100!');

  bool guessedCorrectly = false;

  // Lambda function for hint
  var giveHint = (int guess) =>
      guess < target ? 'Too low!' : guess > target ? 'Too high!' : 'Correct!';

  while (!guessedCorrectly) {
    stdout.write('Enter your guess: ');
    int? guess = int.tryParse(stdin.readLineSync()!);

    if (guess == null) {
      print('Please enter a valid number.');
      continue;
    }

    String hint = giveHint(guess);
    print(hint);

    if (hint == 'Correct!') {
      guessedCorrectly = true;
    }
  }

  print('You guessed it! The number was $target.');
}
