void main() {
  var name = 'John'; // Can't assign a different type to a variable
  name = 'Jane'; // Can assign a different value to a variable; ONLY THE DATA TYPE CAN'T BE CHANGED; VALUE CAN BE CHANGED

  // ALWAYS ENDS WITH A SEMICOLON;

  // FINAL & CONST
  final age = 25; // When you use final, you can't change the value of the variable
  // age = 26; // This will give an error because you can't change the value of a final variable

  const isOpen = true; // When you use const, you can't change the value of the variable
  // isOpen = false; // This will give an error because you can't change the value of a const variable

  // DIFFERENCE BETWEEN FINAL AND CONST
  // FINAL: RUN TIME CONSTANT, typically used when we dont know what a value will be at compile time
  // CONST: COMPILE TIME CONSTANT, used when we know what a value will be at compile time
  // COMPILE TIME: Before the program runs
  // RUN TIME: While the program is actually running


  print(name);
  print(age);
  print(isOpen);

  // ARITHMETIC OPERATORS
  // +, -, *, /, % 
  int a = 10;
  int b = 5;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  // STRING INTERPOLATION $var
  print("My name is $name and my age is $age");

  // Comments
  // Single line comment
  /*
  Multi line comment
  */

}