// task_16.dart
import 'dart:io';

void main() {
  Map<String, String> addressBook = {};
  
  while (true) {
    print('\nAddress Book Menu:');
    print('1. Add Contact');
    print('2. Update Contact');
    print('3. Remove Contact');
    print('4. View All Contacts');
    print('5. Exit');
    String? choice = stdin.readLineSync();
    
    switch (choice) {
      case '1':
        print('Enter name:');
        String name = stdin.readLineSync()!;
        print('Enter phone number:');
        String phone = stdin.readLineSync()!;
        addressBook[name] = phone;
        print('Contact added.');
        break;
      case '2':
        print('Enter name of contact to update:');
        String name = stdin.readLineSync()!;
        if (addressBook.containsKey(name)) {
          print('Enter new phone number:');
          String phone = stdin.readLineSync()!;
          addressBook[name] = phone;
          print('Contact updated.');
        } else {
          print('Contact not found.');
        }
        break;
      case '3':
        print('Enter name of contact to remove:');
        String name = stdin.readLineSync()!;
        if (addressBook.containsKey(name)) {
          addressBook.remove(name);
          print('Contact removed.');
        } else {
          print('Contact not found.');
        }
        break;
      case '4':
        if (addressBook.isEmpty) {
          print('Address book is empty.');
        } else {
          print('All Contacts:');
          addressBook.forEach((name, phone) {
            print('Name: $name, Phone: $phone');
          });
        }
        break;
      case '5':
        print('Exiting address book.');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}