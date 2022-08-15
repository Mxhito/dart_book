import 'collections_challenges.dart';

void collectionsMain() {
  ///Lists
  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList =
      List.unmodifiable(modifiableList); //Creating immutable list
  print(unmodifiableList);

  const drinks = ['water', 'milk', 'juice', 'soda'];
  drinks.first; // water
  drinks.last; // soda

  drinks.isEmpty; // false
  drinks.isNotEmpty; // true

  for (var drink in drinks) {
    print(drink);
  }

  //drinks.forEach(print); // the same

  //Spread operator
  const pastries = ['cookies', 'croissants'];
  List candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

  List desserts = ['donuts', ...pastries, ...candy];
  print(desserts);

  //null spread operator (...?)
  List<String>? coffees;
  // ignore: unused_local_variable
  final hotDrinks = ['milk tea', ...?coffees]; //avoid null error

  //Collection if
  const peanutAllergy = true;
  candy = [
    'Junior Mints',
    'Twizzlers',
    // ignore: dead_code
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);

  //Collection for
  desserts = [];
  desserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in desserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
  print('\n');

  //Mini-exercises
  List<String> mounths = [];
  mounths.addAll([
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ]);
  const constMounths = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  final bigMounth = [for (var mounth in constMounths) mounth.toUpperCase()];

  print(bigMounth);
  print('\n');

  ///Sets - List without dublicates
  final someSet = <int>{};
  // ignore: equal_elements_in_set
  final anotherSet = {1, 2, 3, 1};
  print(anotherSet);

  //Checking the contents
  print(anotherSet.contains(1)); // true
  print(anotherSet.contains(99));

  //Adding single elements
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet);

  //Removing elements
  someSet.remove(2112);

  //Adding multiple elements
  someSet.addAll([1, 2, 3, 4]);
  print(someSet);

  //Intersections and Unions
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  final intersection = setA.intersection(setB);
  final union = setA.union(setB);

  print(intersection);
  print(union);

  //Almost everything that you learned earlier about lists also applies to sets

  ///Map
  final emptyMap = <String, int>{};
  print(emptyMap.length);

  //Initializing a Map with values
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  // ignore: unused_local_variable
  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };

  //Accessing elements from a map
  final numberOfCakes = inventory['cakes']; //20
  //map will return null if the key doesn’t exist
  print(numberOfCakes?.isEven);

  //Adding elements to a map
  inventory['brownies'] = 3;
  print(inventory);

  //Updating an element
  inventory['cakes'] = 1;
  print(inventory);

  //Removing elements from a map
  inventory.remove('cookies');
  print(inventory);

  //Map properties
  inventory.isEmpty; // false
  inventory.isNotEmpty; // true
  inventory.length; // 4

  print(inventory.keys);
  print(inventory.values);

  //Checking for key or value existence
  print(inventory.containsKey('pies')); // true
  print(inventory.containsValue(42)); // false

  //Looping over elements of a map
  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  inventory.forEach((key, value) => print('$key -> $value'));
  print('\n');

  //Mini-exercises
  final info = {
    'name': 'Ilya Mokienko',
    'profession': 'Flutter developer',
    'country': 'Ukraine',
    'city': 'Poltava'
  };

  info['country'] = 'Canada';
  info['city'] = 'Torronto';

  info.forEach((key, value) => print('$key -> $value'));

  print('\n');

  /**
   * Higher order methods
   */

  //Mapping over a collection
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) =>
      number * number); //Like forEach but insert result into new collection
  print(squares.toList()); //*Before it was Itarable type. Don't forget it!!!

  //Filtering a collection
  final evens = squares.where((square) => square
      .isEven); //(Boolean) if true - insert result into new collection, if false - excluded element
  print(evens); //*It's still Itarable type

  //Consolidating a collection

  //Using reduce
  const amounts = [199, 299, 299, 199, 499];
  int total = amounts.reduce((sum, element) => sum + element);
  print(total);

  //Using fold
  total = amounts.fold(0, (int sum, element) => sum + element);
  print(total);
  //* Like reduce but if array is empty - return start value (0)

  //Sorting a list
  desserts.sort();
  print(desserts); //* Doesn't sort const List

  //Reversing a list
  var dessertsReversed = desserts.reversed;
  print(dessertsReversed);

  //Performing a custom sort
  desserts.sort((d1, d2) => d1.length.compareTo(d2.length));
  print(desserts);

  //Combining higher order methods
  const myDesserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = myDesserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDesserts);

  print('\n');

  //Mini-exercises
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores);
  print('min - ${scores[0]}\nmax - ${scores[scores.length - 1]}');
  final bScores = scores.where((score) => 80 <= score && score < 90);
  print(bScores);

  print('\n');

  //Challenges
  const paragraphOfText = 'Once upon a time there was a Dart programmer who '
      'had a challenging challenge to solve. Though the challenge was great, '
      'a solution did come. The end.';

  final colChal1 = collectionChallenge1(paragraphOfText);
  print(colChal1);

  final colChal2 = collectionChallenge2(paragraphOfText);
  print(colChal2);

  final users = [
    ColUser(1, 'Brian'),
    ColUser(2, 'Chris'),
    ColUser(3, 'Pablo'),
  ];

  final colChal3 = collectionChallenge3(users);
  print(colChal3);

  print('\n');
}
