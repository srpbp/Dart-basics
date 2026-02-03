void main() {
  // main function; required function for Dart programs
  // When defining a function in Dart, you use the 'void' keyword to indicate that the function doesn't return a value.
  // We can also add a different type annotation before the function name. To say what type of data will be return.

  // final greeting = greet('John', 30); // Positional argument;
  final greeting = greet(age: 30, name: 'John'); // Named argument, not positional argument;
  print(greeting);
}

String greet({String? name, required int age}) { // Named parameter, initialize by using {}; ? : nullable(optional), and a required parameter
  return 'Hi, my name is $name and I am $age';
}
