import 'dart:io';

void main() {
  List<Expense> expenses = [];

  while (true) {
    print('\nExpense Tracker');
    print('--------------');
    print('1. Add expense');
    print('2. View all expenses');
    print('3. Show total spent');
    print('4. Exit');

    stdout.write('\nChoose an option (1-4): ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('\nAdd amount of expense: ');
        String? amountInput = stdin.readLineSync();
        double? amount = double.tryParse(amountInput ?? "");
        if (amount == null || amount <= 0) {
          print('$amount is not a valid amount');
          return;
        }
        stdout.write('Category of expense: ');
        String? category = stdin.readLineSync();
        if (category == null || category.isEmpty) {
          print('Category cannot be empty');
          return;
        }
        expenses.add(Expense(amount, category));
        print('Expense added! => ${expenses.last}');
        break;
      case '2':
        print('Expenses:');
        for (Expense expense in expenses) {
          print(expense);
        }
        break;
      case '3':
        if (expenses.isEmpty) {
          print('No expenses recorded yet');
        }

        double total = 0.0;
        for (Expense expense in expenses) {
          total += expense.amount;
        }
        print('Total spent: $total');
        break;
      case '4':
        print('Exit');
        return;
      default:
        print('Invalid option');
        continue;
    }
  }
}

class Expense {
  double amount;
  String category;

  Expense(this.amount, this.category);

  @override
  String toString() {
    return 'Expense(amount: $amount, category: $category)';
  }
}
