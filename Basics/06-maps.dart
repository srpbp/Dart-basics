void main() {
  // var planets = {}; Empty map

  Map<String, String> planets = {
    // Specifying the type of keys and values
    // MAP: a dynamic collection that stores data in key-value pairs
    // Each key within a map must be unique, while values can be duplicated.
    "first": "Mercury",
    "second": "Venus",
    "third": "Earth",
    "fourth": "Mars",
    "fifth": "Jupiter",
  };

  planets["fifth"] = "abcdef"; // Updating a value in the map
  planets["sixth"] = "Uranus";
  print(planets);
  print(planets["first"]); // Printing the value associated with the key "first"

  print(planets.containsKey("first")); // Checking if a key exists in the map
  print(planets.containsKey("seventh"));

  print(
    planets.containsValue("Earth"),
  ); // Checking if a value exists in the map
  print(planets.remove("third")); // Removing a key-value pair from the map
  print(planets);

  print(planets.keys);
  print(planets.values);
}
