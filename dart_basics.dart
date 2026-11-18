// Student: Nyirambarushimana Claudine
// Reg no:  26626
const String regNo = '26626';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// B2: Count vowels
int countVowels(String text) {
  // by NC
  int count = 0;
  String lowerText = text.toLowerCase();

  for (int i = 0; i < lowerText.length; i++) {
    if ('aeiou'.contains(lowerText[i])) {
      count++;
    }
  }

  return count;
}
// B3: Get initials from a full name
String initials(String fullName) {
  // by NC
  String trimmedName = fullName.trim();

  if (trimmedName.isEmpty) {
    return '';
  }

  List<String> names = trimmedName.split(RegExp(r'\s+'));

  String result = '';

  for (String name in names) {
    result += '${name[0].toUpperCase()}.';
  }

  return result;
}
void main() {
  // by NC
  print('Reg no: $regNo | D = $d | T = $t');

  // A1: Variables and operators
  int a = 17;
  int b = 5;

  print(a / b);
  print(a ~/ b);
  print(a % b);
  print(-a % b);
  print(-a ~/ b);
  print(-17.abs());
  print(0.1 + 0.2 == 0.3);
  print(10 == 10.0);

  // A2: Personal numbers
  int x = d;
  int y = t;
  var z = x * 2 + y ~/ 4;

  z += x;

  print(z);
  print(z.isEven);
  print('$z' + '$x');

  // B1: String operations
  String city = 'Kigali';

  print(city.length);
  print(city[city.length - 1]);
  print(city.substring(2, 4));
  print(city.toUpperCase().indexOf('A'));
  print(city.contains('k'));
  print('$city.length');
  print('${city.length}');
  print('$city$city');
  city.toUpperCase();
  print(city);
  print(city.replaceAll('i', '!'));
  print('5' + 5.toString());
  print(int.parse('5') + 5);

  // B2: Count vowels in full name
  String fullName = 'Nyirambarushimana Claudine';
  print('$fullName has ${countVowels(fullName)} vowels');
  // B3: Test initials
  print(initials('Nyirambarushimana Claudine'));
  print(initials(' ana uwase '));
  print(initials(' '));
    // C1: Continue and Break
  int number = 0;

  while (number < 5) {
    number++;

    if (number == 2) {
      continue;
    }

    if (number == 4) {
      break;
    }

    print(number);
  }
    // C2: Switch statement
  int day = 3;

  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    default:
      print('Invalid day');
  }
}
