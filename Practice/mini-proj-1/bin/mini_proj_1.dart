import 'dart:io';

void main() {
  print('\nExpense Tracker');
  print('--------------');
  print('1. Add expense');
  print('2. View all expenses');
  print('3. Show total spent');
  print('4. Exit');

  print('\nChoose an option (1-4):');
  String? choice = stdin.readLineSync();

  if (choice == '1') {
    print('Add expense');
  } else if (choice == '2') {
    print('View all expenses');
  } else if (choice == '3') {
    print('Show total spent');
  } else if (choice == '4') {
    print('Exit');
  } else {
    print('Invaid');
  }
}

class Expense {
  String name;
  double amount;

  Expense(this.name, this.amount);
}
