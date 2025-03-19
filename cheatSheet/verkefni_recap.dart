import 'dart:io';

// contact.dart
class Contact {
  String name;
  String phoneNumber;
  String email;

  Contact(this.name, this.phoneNumber, this.email);
}

// contact_manager.dart
class ContactManager {
  List<Contact> contacts = [];

  void addContact(Contact contact) {
    contacts.add(contact);
    print('Contact added: ${contact.name}');
  }

  void listContacts() {
    if (contacts.isEmpty) {
      print('No contacts available.');
      return;
    }
    print('Contacts:');
    for (var contact in contacts) {
      print('${contact.name}, ${contact.phoneNumber}, ${contact.email}');
    }
  }

  void deleteContact(String name) {
    final contactToRemove = contacts.firstWhere(
          (contact) => contact.name.toLowerCase() == name.toLowerCase(),
      orElse: () => Contact('', '', ''), // Provide a default Contact instead of null
    );

    if (contactToRemove.name.isNotEmpty) {
      contacts.remove(contactToRemove);
      print('Contact deleted: ${contactToRemove.name}');
    } else {
      print('Contact not found.');
    }
  }
}

// main.dart
void main() {
  final contactManager = ContactManager();

  while (true) {
    print('\n1. Add Contact');
    print('2. View Contacts');
    print('3. Delete Contact');
    print('4. Exit');
    print('Select an option:');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Enter name:');
        String? name = stdin.readLineSync();
        print('Enter phone number:');
        String? phoneNumber = stdin.readLineSync();
        print('Enter email:');
        String? email = stdin.readLineSync();
        contactManager.addContact(Contact(name!, phoneNumber!, email!));
        break;
      case '2':
        contactManager.listContacts();
        break;
      case '3':
        print('Enter name of contact to delete:');
        String? nameToDelete = stdin.readLineSync();
        contactManager.deleteContact(nameToDelete!);
        break;
      case '4':
        print('Exiting...');
        return;
      default:
        print('Invalid option. Try again.');
    }
  }
}
