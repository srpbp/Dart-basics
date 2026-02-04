void main() {
  var noodles = MenuItem("Noodles", 10.99);
  var roast = MenuItem('Veggie Roast Dinner', 15.99);
  var kebab = MenuItem('Plant Kebab', 14.99);

  var pizza = Pizza(["Mushrooms", "Pepperoni"], "Pizza", 12.99);

  // When we print objects directly, Dart calls their toString() method
  // Because we overrode toString(), we get nice output instead of "Instance of ..."
  print('$noodles, $pizza, $roast, $kebab');

  // Creating a generic collection that can only hold MenuItem objects (or subtypes like Pizza)
  var foods = Collection<MenuItem>(
    'Menu Items',                    // name of the collection
    [noodles, pizza, roast, kebab]   // list of menu items
  );

  // randomItem() returns one random item from the collection (type MenuItem)
  var random = foods.randomItem();
  print(random);   // will show the formatted string (thanks to toString())
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return '$title ==> $price';
  }

  // We override toString() so print() shows something useful instead of "Instance of MenuItem"
  @override
  String toString() {
    return format();
  }
}

// Pizza is a special kind of MenuItem — uses inheritance (extends)
class Pizza extends MenuItem {
  List<String> toppings;

  // super.title and super.price pass values to the parent (MenuItem) constructor
  Pizza(this.toppings, super.title, super.price);

  // We override format() to include the toppings information
  @override
  String format() {
    var formattedToppings = 'Contains: ';
    for (final t in toppings) {
      formattedToppings = '$formattedToppings $t';
    }
    return '$title => $price\n$formattedToppings';
  }

  // Pizza has its own toString() — different from MenuItem
  // This is why print(pizza) shows something different than print(noodles)
  @override
  String toString() {
    return 'Instance of Pizza: $title, $price, $toppings';
  }
}

// Generic class — T can be any type (in this program we use T = MenuItem)
class Collection<T> {
  String name;         // just a label/description
  List<T> data;        // list that only accepts items of type T

  Collection(this.name, this.data);

  // Returns one random item from the list (type T)
  // Because we used generics, Dart knows the returned value is MenuItem in this case
  T randomItem() {
    data.shuffle();     // shuffles the list (changes order randomly)
    return data[0];     // takes the first item after shuffling
  }
}