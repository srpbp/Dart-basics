void main() {
  // LIST: are a bit like arrays in other languages. They are ordered collections of values.
  // var scores = [10, 20, 30, 40]; In the future, after declared and initialized this 'var' to List<int>. We can't add strings later on down in the code.

  // Initializing a list with a specific type.
  List<int> scores = [10, 20, 30, 40, 20];

  scores[0] = 25;
  // Accessing elements using index
  print(scores[0]); // Indexing starts at 0

  scores.add(100); // Adding values
  // scores.remove(20); // Removing values, removing the first instance of a duplicated values
  // scores.removeLast(); // Removing values at the last index
  // scores.shuffle();

  print(scores);
  print(scores.length);
  print(scores.indexOf(40));
  print("------------------");

  // SETS: similar to lists, it holds a collection of values. Unlike lists SETS ARE NOT ORDERED AND CAN'T HOLD DUPES
  // var names = {"Mario", "Luigi", "Peach"};
  Set<String> names = {"Mario", "Luigi", "Peach"};
  names.add("Bowser");
  names.add("Peach");
  names.remove("Luigi");

  print(names);
  print(names.length);
}
