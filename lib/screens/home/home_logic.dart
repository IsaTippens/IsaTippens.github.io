int yearsSince(int day, int month, int year) {
  DateTime dob = DateTime(year, month, day);
  return yearsSinceDate(dob);
}

int yearsSinceDate(DateTime from) {
  var now = DateTime.now();
  var diff = now.year - from.year;
  if (now.month < from.month ||
      (now.month == from.month && now.day < from.day)) {
    diff--;
  }
  return diff;
}

List<List<String>> languages = [
  ["C#", "Python"],
  ["Golang", "Javascript", "Java", "Dart"],
  ["Solidity", "C", "C++"],
  ["Delphi", "Rust"],
];

Map<String, List<String>> frameworks = {
  "C#": ["Monogame"],
  "Python": [""],
  "JavaScript": ["ReactJS", "React Native", "VueJS", "NuxtJS"],
  "Golang": [""],
  "Java": [""],
  "Dart": ["Flutter"],
  "Rust": [""],
  "Solidity": ["Truffle", "BSC"],
  "C": [""],
  "C++": [""],
  "Delphi": [""],
};
