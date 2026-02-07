import 'dart:io';

void main() {
  List<Expense> expenses = []; // Initialize an empty list of expenses

  while (true) { // Loop indefinitely until the user chooses to exit
    print('\nExpense Tracker');
    print('--------------');
    print('1. Add expense');
    print('2. View all expenses');
    print('3. Show total spent');
    print('4. Exit');

    stdout.write('\nChoose an option (1-4): ');
    String? choice = stdin.readLineSync(); // This lets the user insert values into the console

    switch (choice) {
      case '1':
        stdout.write('\nAdd amount of expense: ');
        String? amountInput = stdin.readLineSync();
        double? amount = double.tryParse(amountInput ?? ""); // If it's null use "", if not parse it
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
        expenses.add(Expense(amount, category)); // Add the expense to the List<Expense>
        print('Expense added! => ${expenses.last}'); // Print the added expense with the ".last"
        break;
      case '2':
        print('Expenses:');
        for (Expense expense in expenses) { // Iterate over the expenses list
          print(expense);
        }
        break;
      case '3':
        if (expenses.isEmpty) { // Check if the expenses list is empty
          print('No expenses recorded yet');
        }

        double total = 0.0; // Initialize total to 0.0
        for (Expense expense in expenses) { // Iterate over the expenses list
          total += expense.amount; // Add the amount of the current expense to the total
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
  String toString() { // Override the toString method to provide a custom string representation of the Expense object
    return 'Expense(amount: $amount, category: $category)';
  }
}
