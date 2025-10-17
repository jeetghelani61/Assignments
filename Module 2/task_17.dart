// task_17.dart
class Book {
  String title;
  String author;
  int publicationYear;

  // Constructor
  Book(this.title, this.author, this.publicationYear);

  // Method to display book details
  void displayDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Publication Year: $publicationYear');
  }

  // Method to check if the book is over 10 years old
  bool isOverTenYearsOld() {
    int currentYear = DateTime.now().year;
    return (currentYear - publicationYear) > 10;
  }
}

void main() {
  // Create an instance of the Book class
  Book myBook = Book('The Hobbit', 'J.R.R. Tolkien', 1937);

  print('Book Details:');
  myBook.displayDetails();
  
  if (myBook.isOverTenYearsOld()) {
    print('This book is over 10 years old.');
  } else {
    print('This book is not over 10 years old.');
  }
}