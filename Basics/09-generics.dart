void main() {
  var noodles = MenuItem("Noodles", 10.99);
  var pizza = Pizza(["Mushrooms", "Pepperoni"], "Pizza", 12.99);
  var roast = MenuItem('Veggie Roast Dinner', 15.99);
  var kebab = MenuItem('Plant Kebab', 14.99);

  print('$noodles, $pizza, $roast, $kebab');

  var foods = Collection<MenuItem>(
    'Menu Items', 
    [noodles, pizza, roast, kebab]
  );

  var random = foods.randomItem();
  print(random);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);
  String format() {
    return '$title ==> $price';
  }

  @override
  String toString() {
    return format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(this.toppings, super.title, super.price);

  @override
  String format() {
    var formattedToppings = 'Contains: ';
    for (final t in toppings) {
      formattedToppings = '$formattedToppings $t';
    }

    return '$title => $price\n$formattedToppings';
  }

  @override
  String toString() {
    return 'Instance of Pizza: $title, $price, $toppings';
  }
}

class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem() {
    data.shuffle();
    return data[0];
  }
}
