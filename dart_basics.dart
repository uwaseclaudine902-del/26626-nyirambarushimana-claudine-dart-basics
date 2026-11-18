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
void drawTriangle(int height) {
  // by NC
  int row = 1;

  while (row <= height) {
    String line = '';
    int spaces = height - row;

    while (spaces > 0) {
      line += ' ';
      spaces--;
    }

    String symbol = row.isEven ? '#' : '*';
    int column = 0;

    while (column < row) {
      line += symbol;
      column++;
    }

    print(line);
    row++;
  }
}
int momoFee(int amount) {
  // by NC
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}
  String maskPhone(String phone) {
  // by NC
  if (phone.length != 10) {
    return 'INVALID';
  }

  String stars = '';
  int i = 0;

  while (i < phone.length - 5) {
    stars += '*';
    i++;
  }
  
  return phone.substring(0, 3) +
      stars +
      phone.substring(phone.length - 2);
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
  int day = 2;

  switch (day) {
    case 1:
    case 2:
      print('Early week');
    case 3:
      print('Midweek');
    default:
      print('Weekend soon');

  }
  // C3: Null-aware operators and do-while
  int? bonus;

  print(bonus ?? 50);

  bonus ??= 70;
  bonus ??= 90;

  print(bonus);

  int n = 10;

  do {
    print(n);
    n += 3;
  } while (n < 10);
    // C5: Draw triangle
  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);
    // C4: Personal while loop
  int c4x = d;
  String result = '';

  while (c4x > 0) {
    if (c4x % 2 == 0) {
      result += 'E';
    } else {
      result += 'O';
    }

    c4x -= 3;
  }

  print(result);
  print(result.length);
  print(result.isEmpty ? 'nothing' : result[0]);

    // D2: MoMo receipt printer
  int d2TotalFees = 0;
  int d2i = 1;
  String d2Phone = '0788123456';

  while (d2i <= d + 3) {
    int d2Amount = d2i * 4000 + t * 100;
    int d2Fee = momoFee(d2Amount);

    print(
      'Receipt $d2i | $d2Amount RWF | '
      'fee $d2Fee RWF | to ${maskPhone(d2Phone)}',
    );

    d2TotalFees += d2Fee;
    d2i++;
  }

  print('Total fees: $d2TotalFees RWF');
}


