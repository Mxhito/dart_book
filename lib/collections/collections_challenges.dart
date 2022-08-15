Set<String> collectionChallenge1(String text) {
  return text.split('').map((element) => (element)).toSet();
}

Map<String, int> collectionChallenge2(String text) {
  final characterFrequencyMap = <String, int>{};

  text.split('').forEach((element) {
    final frequency = characterFrequencyMap[element] ?? 0;
    characterFrequencyMap[element] = frequency + 1;
  });

  return characterFrequencyMap;
}

Map<int, String> collectionChallenge3(List<ColUser> users) {
  final userMapList = <int, String>{};

  for (var user in users) {
    userMapList[user.id] = user.name;
  }

  return userMapList;
}

class ColUser {
  ColUser(this.id, this.name);

  int id;
  String name;
}
