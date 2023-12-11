void main() {
  //create dart list of map
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 20.50},
    {'name': 'Banana', 'color': 'Yellow', 'price': 11.50},
    {'name': 'Grapes', 'color': 'Purple', 'price': 30}
  ];

  // display fruit list without discount
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  // 10% discount prices
  applyPriceDiscount(fruits, 10);

  // display fruit list with discount
  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}

// print fruits lists
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var i = 0; i < fruits.length; i++) {
    var fruit = fruits[i];
    print(
        'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

// calculate discount price and set discounted value to specific index
void applyPriceDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice;
    // checking price type. if price is int, then convert to double
    // otherwise no change
    if (fruit['price'] is int) {
      int price = fruit['price'];
      originalPrice = price.toDouble();
    } else {
      originalPrice = fruit['price'];
    }
    // calculate
    double discountAmount = (discountPercentage / 100) * originalPrice;
    double discountedPrice = originalPrice - discountAmount;
    // set updated discounted price
    fruit['price'] = discountedPrice;
  }
}
