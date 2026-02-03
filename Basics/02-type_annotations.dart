void main() {
  // TYPE ANNOTATIONS
  const String name = 'John';
  // String name = 10; // This will give an error because you can't assign a different type to a variable
  print(name);

  final age = 25; // Should be const if the value is known at compile time
  print(age);

  bool isOpen = true;
  // bool isOpen = 'true'; // This will give an error because you can't assign a different type to a variable
  isOpen = false;
  print(isOpen);

  double rating = 7;
  rating = 7.5;
  print(rating);

  // NULL SAFETY
  int? points; // This means that points can be null; ? means that the variable can be null
  print(points);
}