void main() {
  // Create a simple menu item (no extra features)
  var noodles = MenuItem("Noodles", 10.99);
  
  // Create a pizza — it has toppings, so we use the Pizza class
  var pizza = Pizza(["Mushrooms", "Pepperoni"], "Pizza", 12.99);

  // When we print an object, Dart automatically calls its toString() method
  print(noodles);   // will use MenuItem's toString()
  print(pizza);     // will use Pizza's toString()
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  // This method creates a nice string description of the item
  String format() {
    return '$title ==> $price';
  }

  // @override means: "Replace the default toString() that Dart gives every object"
  // Without this, print() would show something boring like: Instance of 'MenuItem'
  @override
  String toString() {
    return format();   // we reuse the format() method
  }
}

// Pizza is a special kind of MenuItem (inheritance with "extends")
class Pizza extends MenuItem {
  List<String> toppings;

  // super.title and super.price = pass these values to the MenuItem constructor
  Pizza(this.toppings, super.title, super.price);

  // We override format() to add pizza-specific information (the toppings)
  @override
  String format() {
    var formattedToppings = 'Contains: ';
    for (final t in toppings) {
      formattedToppings = '$formattedToppings $t';
    }
    
    // \n means "new line" — so price and toppings appear on separate lines
    return '$title => $price\n$formattedToppings';
  }

  // This is a different toString() — Pizza chooses to show something else
  // when someone does print(pizza)
  @override
  String toString() {
    // Notice: this version does NOT use format() — it's a different message
    return 'Instance of Pizza: $title, $price, $toppings';
  }
}