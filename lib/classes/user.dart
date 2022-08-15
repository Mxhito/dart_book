class User {
  // unnamed constructor
  //const User({this.id = 0, this.name = 'anonymous'}) : assert(id >= 0); // this = int, String
  // _id = id,
  // _name = name;
  const User({this.id = _anonymousId, this.name = _anonymousName})
      : assert(id >= 0);

  // named constructor
  const User.anonymous() : this();

  //factory constructor
  // factory User.ray() {
  //   return User(id: 42, name: 'Ray');
  // }

  //factory constructor to create User from Json
  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;
  //   return User(id: userId, name: userName);
  // }

  //Pubick properties and private fields
  // final int? _id;
  // final String? _name;
  final String name;
  final int id;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  //Getter
  // int? get id => _id;
  // String? get name => _name;
  // bool get isBigId => _id! > 1000;

  String toJson() {
    return '{"id":$id,"name":"$name"}'; //_id, _name
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)'; //_id, _name
  }
}
