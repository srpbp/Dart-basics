void main() {
  
  // Create a simple menu item (just a name and price)
  var noodles = MenuItem("Noodles", 10.99);
  
  // Create a pizza - it has toppings + name + price
  // We use the Pizza class (not MenuItem) because pizza has extra information
  var pizza = Pizza(["Mushrooms", "Pepperoni"], "Pizza", 12.99);

  print(noodles.format());
  print(pizza.format());
}

class MenuItem {
  
  String title;
  double price;

  // This is how we create a new MenuItem
  // We give it a name and a price when we make it
  MenuItem(this.title, this.price);

  // This method creates a nice text version of the item
  // Example: "Noodles => 10.99"
  String format() {
    return '$title => $price';
  }
}

// Pizza is a special kind of MenuItem
// It has everything a normal MenuItem has + extra: toppings
class Pizza extends MenuItem {
  
  // This list stores all the toppings (like "Mushrooms", "Pepperoni")
  List<String> toppings;

  // This is how we create a new Pizza
  // We need to give: toppings list + name + price
  
  // super.title and super.price mean:
  // "please give these values to the parent class (MenuItem)"
  // Pizza(this.toppings, String title, double price) : super(title, price);
  Pizza(this.toppings, super.title, super.price);
  
  // Right now Pizza uses the same format() method as MenuItem
  // It will show: "Pizza => 12.99"
  // (it doesn't show the toppings yet)
}